package com.epyloc.schools360.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.epyloc.schools360.model.AdmissionExtras;
import com.epyloc.schools360.model.AdmissionFee;
import com.epyloc.schools360.model.Agency;
import com.epyloc.schools360.model.AnnualFee;
import com.epyloc.schools360.model.Dynamic;
import com.epyloc.schools360.model.MasterFeeConfig;
import com.epyloc.schools360.model.MonthlyFee;
import com.epyloc.schools360.model.SchoolDetails;
import com.epyloc.schools360.model.TermFee;
import com.epyloc.schools360.model.UserRoles;
import com.epyloc.schools360.model.Users;
import com.epyloc.schools360.service.EmailService;
import com.epyloc.schools360.service.MasterFeeConfigService;
import com.epyloc.schools360.service.SchoolDetailsService;
import com.epyloc.schools360.service.UserRolesService;
import com.epyloc.schools360.service.UserService;
import com.nulabinc.zxcvbn.Strength;
import com.nulabinc.zxcvbn.Zxcvbn;

@Controller
public class RegisterController {

	private BCryptPasswordEncoder bCryptPasswordEncoder;
	private UserService userService;
	private SchoolDetailsService schoolDetailsService;
	private UserRolesService userRolesService;
	private EmailService emailService;
	private MasterFeeConfigService masterFeeConfigService;

	@Autowired
	public RegisterController(BCryptPasswordEncoder bCryptPasswordEncoder, UserService userService, EmailService emailService, UserRolesService userRolesService, SchoolDetailsService schoolDetailsService,
			MasterFeeConfigService masterFeeConfigService) {
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
		this.userService = userService;
		this.userRolesService = userRolesService;
		this.emailService = emailService;
		this.schoolDetailsService = schoolDetailsService;

		this.masterFeeConfigService = masterFeeConfigService;

	}

	@RequestMapping(value = { "/login" })
	public String login() {
		return "login";
	}

	@RequestMapping(value = { "/", "home" })
	public String home() {

		/*
		 * Users u = new Users(); u.setUsername("muzam");
		 * u.setConfirmationToken(UUID.randomUUID().toString());
		 * u.setEnabled(true); String pp = "muzam";
		 * u.setPassword(bCryptPasswordEncoder.encode(pp));
		 * u.setSchoolUniqueIdentifier("epyloc");
		 * 
		 * UserRoles userRoles = new UserRoles();
		 * userRoles.setUsername(u.getUsername());
		 * userRoles.setRole("ROLE_ADMIN");
		 * 
		 * userService.saveUser(u); userRolesService.saveUser(userRoles);
		 */
		return "home";
	}

	@RequestMapping(value = "/landing")
	public String landing() {
		return "landing";
	}

	// Return registration form template
	@RequestMapping(value = "/onboarding", method = RequestMethod.GET)
	public ModelAndView usersonboarding(ModelAndView modelAndView, Users user) {
		modelAndView.addObject("users", user);
		modelAndView.setViewName("usersonboarding");
		return modelAndView;
	}

	@RequestMapping(value = "/masterFeeConfig", method = RequestMethod.POST)
	public String submitMasterFeeConfig(ModelAndView modelAndView, @Valid MasterFeeConfig masterFeeConfig, BindingResult bindingResult, Principal principal) {
		Users user = userService.findByUsername(principal.getName());
		masterFeeConfig.setSchoolUniqueIdentifier(user.getSchoolUniqueIdentifier());
		masterFeeConfig.setMaster_fee_config_uniqueidentifier(user.getSchoolUniqueIdentifier() + "-" + masterFeeConfig.getAcademicYear() + "-" + masterFeeConfig.getStd() + "-" + masterFeeConfig.getTypeOfFee());
		masterFeeConfig.getAdmissionExtrasFee().setMasterFeeConfig(masterFeeConfig);
		masterFeeConfig.getAdmissionFee().setMasterFeeConfig(masterFeeConfig);

		if (masterFeeConfig.getTypeOfFee().equalsIgnoreCase("T")) {

			masterFeeConfig.getTermFee().setMasterFeeConfig(masterFeeConfig);
			masterFeeConfig.getAnnualFee().setMasterFeeConfig(masterFeeConfig);
			masterFeeConfig.getMonthlyFee().setMasterFeeConfig(masterFeeConfig);

			masterFeeConfigService.saveMasterFeeConfig(masterFeeConfig);
		}

		return "masterconfig";
	}

	// Process form input data
	@RequestMapping(value = "/onboarding", method = RequestMethod.POST)
	public ModelAndView processRegistrationForm(ModelAndView modelAndView, @Valid Users user, BindingResult bindingResult, HttpServletRequest request) {
		// Lookup user in database by username
		Users adminUserExists = userService.findByUsername(user.getUsername());
		Users normalUserExists = userService.findByUsername(user.getPreferredNormalUserName());

		if (adminUserExists != null || normalUserExists != null) {
			modelAndView.addObject("alreadyRegisteredMessage", "Oops!  There is already a user registered with the username provided.");
			modelAndView.setViewName("usersonboarding");
			return modelAndView;
		}

		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("usersonboarding");
		} else {
			// new user so we create user and send confirmation e-mail

			// Disable user until they click on confirmation link in email
			user.setEnabled(false);

			// Generate random 36-character string token for confirmation link
			user.setConfirmationToken(UUID.randomUUID().toString());

			Long maxId = userService.findMaxId() + 1;
			// set school unique identification key
			user.setSchoolUniqueIdentifier("schoolid" + maxId);

			SchoolDetails schoolDetails = populateSchoolDetails(user);
			UserRoles userRoles = populateUserRoles(user, "ROLE_ADMIN");

			userService.saveUser(user);
			schoolDetailsService.saveSchoolDetails(schoolDetails);
			userRolesService.saveUserRole(userRoles);

			String preferredNewUser = user.getPreferredNormalUserName();
			Users user2 = new Users();
			user2.setUsername(preferredNewUser);
			user2.setConfirmationToken(UUID.randomUUID().toString());
			user2.setEnabled(false);
			user2.setSchoolUniqueIdentifier(user.getSchoolUniqueIdentifier());

			UserRoles userRoles2 = populateUserRoles(user2, "ROLE_USER");

			userService.saveUser(user2);
			userRolesService.saveUserRole(userRoles2);

			String appUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getLocalPort();

			SimpleMailMessage registrationEmail = new SimpleMailMessage();
			registrationEmail.setTo("mailmuzam88@gmail.com");
			registrationEmail.setSubject("Schools360 - On-boarding Confirmation");
			registrationEmail
					.setText("To complete the on-boarding process and also to confirm your e-mail address, please click the link below:\n" + appUrl + "/confirm?token=" + user.getConfirmationToken() + "&tokenalt=" + user2.getConfirmationToken());
			registrationEmail.setFrom("noreply@domain.com");

			emailService.sendEmail(registrationEmail);

			modelAndView.addObject("confirmationMessage", "A confirmation link has been sent to the admin's mail. Please click on the link to proceed.");
			modelAndView.setViewName("usersonboarding");
		}

		return modelAndView;
	}

	private UserRoles populateUserRoles(Users user, String role) {
		UserRoles userRoles = new UserRoles();
		userRoles.setUsername(user.getUsername());
		userRoles.setRole(role);
		return userRoles;
	}

	private SchoolDetails populateSchoolDetails(Users user) {
		SchoolDetails schoolDetails = new SchoolDetails();
		schoolDetails.setSchoolName(user.getSchoolName());
		schoolDetails.setEmail(user.getEmail());
		schoolDetails.setContactNo(user.getContactNo());
		schoolDetails.setAlternateContactNo(user.getAlternateContactNo());
		schoolDetails.setLocation(user.getLocation());
		schoolDetails.setDistrict(user.getDistrict());
		schoolDetails.setSchoolUniqueIdentifier(user.getSchoolUniqueIdentifier());
		return schoolDetails;
	}

	// Process confirmation link
	@RequestMapping(value = "/confirm", method = RequestMethod.GET)
	public ModelAndView confirmRegistration(ModelAndView modelAndView, @RequestParam("token") String token, @RequestParam("tokenalt") String tokenalt) {
		modelAndView.setViewName("usersonboardingconfim");
		modelAndView.addObject("users", new Users());

		Users user = userService.findByConfirmationToken(token);
		Users user2 = userService.findByConfirmationToken(tokenalt);

		if (user == null || user2 == null) { // No token found in DB
			modelAndView.addObject("invalidToken", "Oops!  This is an invalid confirmation link.");
		} else { // Token found
			modelAndView.addObject("confirmationToken", user.getConfirmationToken());
			modelAndView.addObject("confirmationTokenalt", user2.getConfirmationToken());
			modelAndView.addObject("users", new Users());
		}

		return modelAndView;
	}

	// Process confirmation link
	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public ModelAndView confirmRegistration(ModelAndView modelAndView, Users user, BindingResult bindingResult, @RequestParam Map<String, String> requestParams, RedirectAttributes redir) {

		modelAndView.setViewName("usersonboardingconfim");
		System.out.println(requestParams.get("password"));

		System.out.println(requestParams.get("preferredNormalUserPassword"));
		Zxcvbn passwordCheck = new Zxcvbn();
		Strength strength = passwordCheck.measure(requestParams.get("password"));
		Strength strength2 = passwordCheck.measure(requestParams.get("preferredNormalUserPassword"));

		if (strength.getScore() < 3) {
			bindingResult.reject("password");
			redir.addFlashAttribute("errorMessage", "Your admin password is too weak.  Choose a stronger one.");
			modelAndView.setViewName("redirect:confirm?token=" + requestParams.get("confirmationToken") + "&tokenalt=" + requestParams.get("confirmationTokenalt"));
			return modelAndView;
		}

		if (strength2.getScore() < 3) {
			bindingResult.reject("preferredNormalUserPassword");
			redir.addFlashAttribute("errorMessage", "Your user password is too weak.  Choose a stronger one.");
			modelAndView.setViewName("redirect:confirm?token=" + requestParams.get("confirmationToken") + "&tokenalt=" + requestParams.get("confirmationTokenalt"));
			return modelAndView;
		}

		setPasswordAndExpireConfirmationLink(requestParams.get("password"), requestParams.get("confirmationToken"));
		setPasswordAndExpireConfirmationLink(requestParams.get("preferredNormalUserPassword"), requestParams.get("confirmationTokenalt"));

		modelAndView.addObject("successMessage", "Your password has been set!");
		return modelAndView;
	}

	private void setPasswordAndExpireConfirmationLink(String password, String confirmationToken) {
		Users user = userService.findByConfirmationToken(confirmationToken);
		// Set new password
		user.setPassword(bCryptPasswordEncoder.encode(password));
		// Set user to enabled
		user.setEnabled(true);
		// Change confirmation token, so that the link expires
		user.setConfirmationToken(UUID.randomUUID().toString());
		// Save user
		userService.saveUser(user);
	}

	// Return registration form template
	@RequestMapping(value = "/dynamics", method = RequestMethod.GET)
	public String dynamics(Model model, Dynamic dynamic, Principal principal) {
		System.out.println(principal.getName() + "---" + principal.toString());
		System.out.println(userService.findByUsername(principal.getName()).getSchoolUniqueIdentifier() + " :hhhhhhhhhhhhhhh");
		model.addAttribute("dynamic", dynamic);
		model.addAttribute("cities", findAll());
		return "dynamics";
	}

	private Map<String, String> findAll() {
		Map<String, String> cities = new HashMap<>();
		cities.put("1", "CNN");
		cities.put("2", "BAN");
		cities.put("3", "PUN");
		return cities;
	}

	@RequestMapping(value = "/agencies", method = RequestMethod.GET)
	public @ResponseBody List<Agency> findAllAgencies(@RequestParam(value = "cityId", required = true) Long cityId) {
		List<Agency> la = new ArrayList<>();
		Agency agency1 = new Agency();
		agency1.setName("Chennai");
		la.add(agency1);
		return la;
	}

	@RequestMapping(value = "/masterFeeConfig", method = RequestMethod.GET)
	public String masterFeeConfig(Model model, MasterFeeConfig masterFeeConfig, Principal principal) {
		masterFeeConfig = new MasterFeeConfig(new AdmissionFee(), new AdmissionExtras(), new TermFee(), new MonthlyFee(), new AnnualFee());

		initializevalues(masterFeeConfig);
		model.addAttribute("masterFeeConfig", masterFeeConfig);
		model.addAttribute("feeTypes", feeTypes());
		model.addAttribute("standards", standards());
		model.addAttribute("academicYear", academicYear());
		return "masterconfig";
	}

	private void initializevalues(MasterFeeConfig masterFeeConfig) {
		String zero = "0";
		masterFeeConfig.getAdmissionFee().setBooksFee(zero);
		masterFeeConfig.getAdmissionFee().setComputerFee(zero);
		masterFeeConfig.getAdmissionFee().setExtraCurricularFee(zero);
		masterFeeConfig.getAdmissionFee().setHostelFee(zero);
		masterFeeConfig.getAdmissionFee().setNoteBooksFee(zero);
		masterFeeConfig.getAdmissionFee().setShoeFee(zero);
		masterFeeConfig.getAdmissionFee().setSmartClassFee(zero);
		masterFeeConfig.getAdmissionFee().setTuitionFee(zero);
		masterFeeConfig.getAdmissionFee().setUniformBeltFee(zero);
		masterFeeConfig.getTermFee().setTerm1(zero);
		masterFeeConfig.getTermFee().setTerm2(zero);
		masterFeeConfig.getTermFee().setTerm3(zero);
		masterFeeConfig.getMonthlyFee().setJanFee(zero);
		masterFeeConfig.getMonthlyFee().setFebFee(zero);
		masterFeeConfig.getMonthlyFee().setMarFee(zero);
		masterFeeConfig.getMonthlyFee().setAprilFee(zero);
		masterFeeConfig.getMonthlyFee().setMayFee(zero);
		masterFeeConfig.getMonthlyFee().setJunFee(zero);
		masterFeeConfig.getMonthlyFee().setJulFee(zero);
		masterFeeConfig.getMonthlyFee().setAugFee(zero);
		masterFeeConfig.getMonthlyFee().setSepFee(zero);
		masterFeeConfig.getMonthlyFee().setOctFee(zero);
		masterFeeConfig.getMonthlyFee().setNovFee(zero);
		masterFeeConfig.getMonthlyFee().setDecFee(zero);
		masterFeeConfig.getAnnualFee().setAnnualFee(zero);
		masterFeeConfig.getAdmissionExtrasFee().setParticular1Fee(zero);
		masterFeeConfig.getAdmissionExtrasFee().setParticular2Fee(zero);
		masterFeeConfig.getAdmissionExtrasFee().setParticular3Fee(zero);
		masterFeeConfig.getAdmissionExtrasFee().setParticular1Label("Label1");
		masterFeeConfig.getAdmissionExtrasFee().setParticular2Label("Label2");
		masterFeeConfig.getAdmissionExtrasFee().setParticular3Label("Label3");

	}

	private Map<String, String> feeTypes() {
		Map<String, String> feeTypes = new HashMap<>();
		feeTypes.put("T", "Term");
		feeTypes.put("M", "Monthly");
		feeTypes.put("Y", "Yearly");
		return feeTypes;
	}

	private Map<String, String> standards() {
		Map<String, String> standards = new HashMap<>();
		standards.put("LKG", "L.K.G");
		standards.put("UKG", "U.K.G");
		standards.put("FIRST", "I");
		return standards;
	}

	private Map<String, String> academicYear() {
		Map<String, String> standards = new HashMap<>();
		standards.put("2018-2019", "2018-2019");
		return standards;
	}

	@RequestMapping(value = "/chk", method = RequestMethod.GET)
	@ResponseBody
	public String saveHosting(@RequestParam(value = "typeOfFee", required = true) String typeOfFee, @RequestParam(value = "std", required = true) String std, @RequestParam(value = "academicYear", required = true) String academicYear,
			Principal principal) throws Exception {
		Users user = userService.findByUsername(principal.getName());
		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(user.getSchoolUniqueIdentifier(), std, academicYear);
		if (null != masterFeeConfig) {
			System.out.println(masterFeeConfig.getMaster_fee_config_uniqueidentifier());
			return "fail";
		}
		return "success";
	}

}