package com.epyloc.schools360.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.epyloc.schools360.model.AdmissionExtras;
import com.epyloc.schools360.model.AdmissionFee;
import com.epyloc.schools360.model.CollectAdmissionFee;
import com.epyloc.schools360.model.CollectFee;
import com.epyloc.schools360.model.CollectTermFee;
import com.epyloc.schools360.model.MasterFeeConfig;
import com.epyloc.schools360.model.StudentDetails;
import com.epyloc.schools360.model.TermFee;
import com.epyloc.schools360.service.AdmissionExtrasService;
import com.epyloc.schools360.service.AdmissionFeeService;
import com.epyloc.schools360.service.AnnualFeeService;
import com.epyloc.schools360.service.CollectAdmissionFeeService;
import com.epyloc.schools360.service.CollectAnnualFeeService;
import com.epyloc.schools360.service.CollectMonthlyFeeService;
import com.epyloc.schools360.service.CollectTermFeeService;
import com.epyloc.schools360.service.MasterFeeConfigService;
import com.epyloc.schools360.service.MonthlyFeeService;
import com.epyloc.schools360.service.StudentDetailsService;
import com.epyloc.schools360.service.TermFeeService;
import com.epyloc.schools360.service.UserService;

@Controller
public class FeeController {

	private UserService userService;
	private MasterFeeConfigService masterFeeConfigService;
	private StudentDetailsService studentDetailsService;

	private AdmissionFeeService admissionFeeService;
	private TermFeeService termFeeService;
	private AdmissionExtrasService admissionExtrasService;
	private MonthlyFeeService monthlyFeeService;
	private AnnualFeeService annualFeeService;

	private CollectAdmissionFeeService collectAdmissionFeeService;
	private CollectTermFeeService collectTermFeeService;
	private CollectMonthlyFeeService collectMonthlyFeeService;
	private CollectAnnualFeeService collectAnnualFeeService;

	@Autowired
	public FeeController(UserService userService, MasterFeeConfigService masterFeeConfigService, StudentDetailsService studentDetailsService, AdmissionFeeService admissionFeeService, TermFeeService termFeeService,
			AdmissionExtrasService admissionExtrasService, MonthlyFeeService monthlyFeeService, AnnualFeeService annualFeeService, CollectAdmissionFeeService collectAdmissionFeeService, CollectTermFeeService collectTermFeeService,
			CollectMonthlyFeeService collectMonthlyFeeService, CollectAnnualFeeService collectAnnualFeeService) {
		this.userService = userService;
		this.masterFeeConfigService = masterFeeConfigService;
		this.studentDetailsService = studentDetailsService;
		this.admissionFeeService = admissionFeeService;
		this.termFeeService = termFeeService;
		this.admissionExtrasService = admissionExtrasService;
		this.monthlyFeeService = monthlyFeeService;
		this.annualFeeService = annualFeeService;
		this.collectAdmissionFeeService = collectAdmissionFeeService;
		this.collectTermFeeService = collectTermFeeService;
		this.collectMonthlyFeeService = collectMonthlyFeeService;
		this.collectAnnualFeeService = collectAnnualFeeService;
	}

	@RequestMapping(value = "/collectFee")
	public ModelAndView cf(ModelAndView modelAndView, CollectFee collectFee, Model model) {
		model.addAttribute("standards", getStandards());
		modelAndView.addObject("collectFee", collectFee);
		modelAndView.setViewName("collectfee");
		return modelAndView;
	}

	@RequestMapping(value = "/collectFee", method = RequestMethod.POST, params = "action=Submit")
	public String collectFee(ModelAndView modelAndView, CollectFee collectFee) {
		System.out.println(collectFee.getCollectAdmissionFee().getBooksFee() + "(((((()))))))))))))))))))))))))))))))))");
		return "admin";

	}

	/**
	 * Ajax call for fetching section based on standard and school Id
	 * 
	 * @param cityId
	 * @return
	 */

	@RequestMapping(value = "/getSecByStd", method = RequestMethod.GET)
	public @ResponseBody List<String> getSecByStd(@RequestParam(value = "std", required = true) String std) {
		System.out.println("Get std");
		List<String> sections = studentDetailsService.getSecByStd(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std);
		System.out.println(sections.get(0) + "77777777777777777777777777777777777");
		return sections;
	}

	@RequestMapping(value = "/getListOfStudentsByStdAndSec", method = RequestMethod.GET)
	public @ResponseBody List<String> getListOfStudentsByStdAndSec(@RequestParam(value = "std", required = true) String std, @RequestParam(value = "sec", required = true) String sec) {
		List<StudentDetails> students = studentDetailsService.getListOfStudentsByStdAndSec(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std, sec);
		List<String> studentsRollIdAndName = new ArrayList<>();
		students.forEach(student -> studentsRollIdAndName.add(student.getRollNo() + "-" + student.getName()));
		return studentsRollIdAndName;
	}

	@RequestMapping(value = "/feeTypeByStd", method = RequestMethod.GET)
	public @ResponseBody String feeTypeByStd(@RequestParam(value = "std", required = true) String std) {
		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std,
				"2018-2019");
		return masterFeeConfig.getTypeOfFee();
	}

	@RequestMapping(value = "/collectFee", method = RequestMethod.POST, params = "action=Populate")
	public ModelAndView populateCollectFee(@ModelAttribute CollectFee collectFee, ModelAndView modelAndView, Model model) {

		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(),
				collectFee.getStd(), "2018-2019");

		if (null == masterFeeConfig || null == masterFeeConfig.getTypeOfFee()) {
			modelAndView.addObject("configureMasterFee", "Oops!  You dont seem to have configured the master fee configuration for this standard.Please configure now.");
			modelAndView.setViewName("collectfee");
			return modelAndView;
		}

		String feeType = masterFeeConfig.getTypeOfFee();
		String schoolUniqueId = userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier();
		collectFee.setFeeType(feeType);
		String rollNo = collectFee.getStudentId_Name().split("-")[0];

		AdmissionFee admissionFee = admissionFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());
		AdmissionExtras admissionExtras = admissionExtrasService.findByMasterFeeUniqueId(masterFeeConfig.getId());
		collectFee.setAdmissionFee(admissionFee);
		BigDecimal admissionTotal = new BigDecimal(StringUtils.isEmpty(admissionFee.getBooksFee()) || admissionFee.getBooksFee().length() < 1 ? "0.00" : admissionFee.getBooksFee())
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getComputerFee()) || admissionFee.getComputerFee().length() < 1 ? "0.00" : admissionFee.getComputerFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getExtraCurricularFee()) || admissionFee.getExtraCurricularFee().length() < 1 ? "0.00" : admissionFee.getExtraCurricularFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getHostelFee()) || admissionFee.getHostelFee().length() < 1 ? "0.00"
						: admissionFee.getHostelFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getNoteBooksFee()) || admissionFee.getNoteBooksFee().length() < 1 ? "0.00" : admissionFee.getNoteBooksFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getShoeFee()) || admissionFee.getShoeFee().length() < 1 ? "0.00" : admissionFee.getShoeFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getSmartClassFee()) || admissionFee.getSmartClassFee().length() < 1 ? "0.00" : admissionFee.getSmartClassFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getTuitionFee()) || admissionFee.getTuitionFee().length() < 1 ? "0.00"
						: admissionFee.getTuitionFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionFee.getUniformBeltFee()) || admissionFee.getUniformBeltFee().length() < 1 ? "0.00" : admissionFee.getUniformBeltFee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionExtras.getParticular1Fee()) || admissionExtras.getParticular1Fee().length() < 1 ? "0.00"
						: admissionExtras.getParticular1Fee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionExtras.getParticular2Fee()) || admissionExtras.getParticular2Fee().length() < 1 ? "0.00"
						: admissionExtras.getParticular2Fee()))
				.add(new BigDecimal(StringUtils.isEmpty(admissionExtras.getParticular3Fee()) || admissionExtras.getParticular3Fee().length() < 1 ? "0.00" : admissionExtras.getParticular3Fee()));
		collectFee.setAdmissionFeeTotal(admissionTotal);

		CollectAdmissionFee collectAdmissionFee = collectAdmissionFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, collectFee.getStd(), collectFee.getSec(), rollNo);
		collectFee.setCollectAdmissionFee(collectAdmissionFee);

		switch (feeType) {
		case "T":

			TermFee termFee = new TermFee();
			termFee.setTerm1(termFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId()).getTerm1());
			termFee.setTerm2(termFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId()).getTerm2());
			termFee.setTerm3(termFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId()).getTerm3());
			collectFee.setTermFee(termFee);

			CollectTermFee collectTermFee = collectTermFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, collectFee.getStd(), collectFee.getSec(), rollNo);
			collectFee.setCollectTermFee(collectTermFee);

			break;

		default:
			break;
		}

		collectFee.setStd("NA");
		model.addAttribute("standards", getStandards());
		modelAndView.setViewName("collectfee");
		return modelAndView;
	}

	private Map<String, String> getStandards() {
		Map<String, String> standards = new HashMap<>();
		List<String> stds = new ArrayList<>();
		String schoolUniqueIdentifier = userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier();
		stds = studentDetailsService.getStd(schoolUniqueIdentifier);
		for (String std : stds) {
			standards.put(std, std);
		}
		return standards;
	}

}