package com.epyloc.schools360.controller;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.epyloc.schools360.model.AdmissionExtras;
import com.epyloc.schools360.model.AdmissionFee;
import com.epyloc.schools360.model.CollectAdmissionFee;
import com.epyloc.schools360.model.CollectAdmissionFeeForm;
import com.epyloc.schools360.model.CollectFee;
import com.epyloc.schools360.model.CollectMonthlyFee;
import com.epyloc.schools360.model.CollectMonthlyFeeForm;
import com.epyloc.schools360.model.CollectTermFee;
import com.epyloc.schools360.model.CollectTermFeeForm;
import com.epyloc.schools360.model.MasterFeeConfig;
import com.epyloc.schools360.model.MonthlyFee;
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

	@RequestMapping(value = "/collectFee", method = RequestMethod.GET)
	public ModelAndView cf(ModelAndView modelAndView, CollectFee collectFee, Model model) {
		model.addAttribute("standards", getStandards());
		modelAndView.addObject("collectFee", collectFee);
		modelAndView.setViewName("collectfee");
		return modelAndView;
	}

	@RequestMapping(value = "/collectFee", method = RequestMethod.POST, params = "action=SubmitTerm1")
	public String collectFeeTerm1(ModelAndView modelAndView, CollectFee collectFee, @RequestParam("T1name") String nameAndRoll, @RequestParam("T1std") String std, @RequestParam("T1sec") String sec) {
		String schoolUniqueId = userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier();
		String rollNo = nameAndRoll.split("-")[0];
		String name = nameAndRoll.split("-")[1];

		CollectTermFee collectTermFeeRecent = collectTermFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, std, sec, rollNo);
		CollectTermFee collectTermFee = new CollectTermFee();

		if (null == collectTermFeeRecent) {
			collectTermFeeRecent = new CollectTermFee();
			collectTermFeeRecent.setTerm1(new BigDecimal(0));
			collectTermFeeRecent.setTerm2(new BigDecimal(0));
			collectTermFeeRecent.setTerm3(new BigDecimal(0));
			collectTermFeeRecent.setTerm2Status("PENDING");
			collectTermFeeRecent.setTerm3Status("PENDING");
		} else {
			collectTermFee.setId(collectTermFeeRecent.getId());
		}

		// Paid fee updates
		collectTermFee.setTerm1(collectFee.getCollectTermFeeForm().getTerm1().add(collectTermFeeRecent.getTerm1()));
		collectTermFee.setTerm2(collectTermFeeRecent.getTerm2());
		collectTermFee.setTerm3(collectTermFeeRecent.getTerm3());

		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std,
				"2018-2019");
		TermFee termFee = termFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());

		// Fee balance updates
		collectTermFee.setTerm1Balance(new BigDecimal(termFee.getTerm1()).subtract(collectTermFee.getTerm1()));
		collectTermFee.setTerm2Balance(new BigDecimal(termFee.getTerm2()).subtract(collectTermFee.getTerm2()));
		collectTermFee.setTerm3Balance(new BigDecimal(termFee.getTerm3()).subtract(collectTermFee.getTerm3()));

		collectTermFee.setConcession("N");
		collectTermFee.setBilledBy(SecurityContextHolder.getContext().getAuthentication().getName());
		collectTermFee.setDateOfTransaction(new Date(new java.util.Date().getTime()));

		// txn ref code - WhoPaid_TotalAmt_Biller_DateTime
		collectTermFee.setTransactionUniqueReferenceCode(name + "_" + collectFee.getCollectTermFeeForm().getTerm1() + "_" + collectTermFee.getBilledBy() + "_" + new java.util.Date().getTime());
		collectTermFee.setSchoolUniqueIdentifier(schoolUniqueId);
		collectTermFee.setStd(std);
		collectTermFee.setSec(sec);
		collectTermFee.setAcademicYear(masterFeeConfig.getAcademicYear());
		collectTermFee.setName(name);
		collectTermFee.setRollNo(rollNo);

		// status
		int result = collectTermFee.getTerm1().compareTo(new BigDecimal(termFee.getTerm1()));
		if (result == -1) {
			collectTermFee.setTerm1Status("PENDING");
		} else if (result == 1) {
			collectTermFee.setTerm1Status("OVER-PAID");
		} else if (result == 0) {
			collectTermFee.setTerm1Status("COMPLETED");
		}
		collectTermFee.setTerm2Status(collectTermFeeRecent.getTerm2Status());
		collectTermFee.setTerm3Status(collectTermFeeRecent.getTerm3Status());
		collectFee.setCollectTermFee(collectTermFee);
		collectTermFeeService.saveCollectTermFee(collectFee.getCollectTermFee());
		return "admin";
	}

	@RequestMapping(value = "/collectFee", method = RequestMethod.POST, params = "action=SubmitTerm2")
	public String collectFeeTerm2(ModelAndView modelAndView, CollectFee collectFee, @RequestParam("T2name") String nameAndRoll, @RequestParam("T2std") String std, @RequestParam("T2sec") String sec) {
		String schoolUniqueId = userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier();
		String rollNo = nameAndRoll.split("-")[0];
		String name = nameAndRoll.split("-")[1];

		CollectTermFee collectTermFeeRecent = collectTermFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, std, sec, rollNo);
		CollectTermFee collectTermFee = new CollectTermFee();

		if (null == collectTermFeeRecent) {
			collectTermFeeRecent = new CollectTermFee();
			collectTermFeeRecent.setTerm1(new BigDecimal(0));
			collectTermFeeRecent.setTerm2(new BigDecimal(0));
			collectTermFeeRecent.setTerm3(new BigDecimal(0));
			collectTermFeeRecent.setTerm1Status("PENDING");
			collectTermFeeRecent.setTerm3Status("PENDING");
		} else {
			collectTermFee.setId(collectTermFeeRecent.getId());
		}

		// Paid fee updates
		collectTermFee.setTerm1(collectTermFeeRecent.getTerm1());
		collectTermFee.setTerm2(collectFee.getCollectTermFeeForm().getTerm2().add(collectTermFeeRecent.getTerm2()));
		collectTermFee.setTerm3(collectTermFeeRecent.getTerm3());

		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std,
				"2018-2019");
		TermFee termFee = termFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());

		// Fee balance updates
		collectTermFee.setTerm1Balance(new BigDecimal(termFee.getTerm1()).subtract(collectTermFee.getTerm1()));
		collectTermFee.setTerm2Balance(new BigDecimal(termFee.getTerm2()).subtract(collectTermFee.getTerm2()));
		collectTermFee.setTerm3Balance(new BigDecimal(termFee.getTerm3()).subtract(collectTermFee.getTerm3()));

		collectTermFee.setConcession("N");
		collectTermFee.setBilledBy(SecurityContextHolder.getContext().getAuthentication().getName());
		collectTermFee.setDateOfTransaction(new Date(new java.util.Date().getTime()));

		// txn ref code - WhoPaid_TotalAmt_Biller_DateTime
		collectTermFee.setTransactionUniqueReferenceCode(name + "_" + collectFee.getCollectTermFeeForm().getTerm2() + "_" + collectTermFee.getBilledBy() + "_" + new java.util.Date().getTime());
		collectTermFee.setSchoolUniqueIdentifier(schoolUniqueId);
		collectTermFee.setStd(std);
		collectTermFee.setSec(sec);
		collectTermFee.setAcademicYear(masterFeeConfig.getAcademicYear());
		collectTermFee.setName(name);
		collectTermFee.setRollNo(rollNo);

		// status
		int result = collectTermFee.getTerm2().compareTo(new BigDecimal(termFee.getTerm2()));
		if (result == -1) {
			collectTermFee.setTerm2Status("PENDING");
		} else if (result == 1) {
			collectTermFee.setTerm2Status("OVER-PAID");
		} else if (result == 0) {
			collectTermFee.setTerm2Status("COMPLETED");
		}
		collectTermFee.setTerm1Status(collectTermFeeRecent.getTerm1Status());
		collectTermFee.setTerm3Status(collectTermFeeRecent.getTerm3Status());
		collectFee.setCollectTermFee(collectTermFee);
		collectTermFeeService.saveCollectTermFee(collectFee.getCollectTermFee());
		return "admin";
	}

	@RequestMapping(value = "/collectFee", method = RequestMethod.POST, params = "action=SubmitTerm3")
	public String collectFeeTerm3(ModelAndView modelAndView, CollectFee collectFee, @RequestParam("T3name") String nameAndRoll, @RequestParam("T3std") String std, @RequestParam("T3sec") String sec) {
		String schoolUniqueId = userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier();
		String rollNo = nameAndRoll.split("-")[0];
		String name = nameAndRoll.split("-")[1];

		CollectTermFee collectTermFeeRecent = collectTermFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, std, sec, rollNo);
		CollectTermFee collectTermFee = new CollectTermFee();

		if (null == collectTermFeeRecent) {
			collectTermFeeRecent = new CollectTermFee();
			collectTermFeeRecent.setTerm1(new BigDecimal(0));
			collectTermFeeRecent.setTerm2(new BigDecimal(0));
			collectTermFeeRecent.setTerm3(new BigDecimal(0));
			collectTermFeeRecent.setTerm1Status("PENDING");
			collectTermFeeRecent.setTerm2Status("PENDING");
		} else {
			collectTermFee.setId(collectTermFeeRecent.getId());
		}

		// Paid fee updates
		collectTermFee.setTerm1(collectTermFeeRecent.getTerm1());
		collectTermFee.setTerm2(collectTermFeeRecent.getTerm2());
		collectTermFee.setTerm3(collectFee.getCollectTermFeeForm().getTerm3().add(collectTermFeeRecent.getTerm3()));

		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std,
				"2018-2019");
		TermFee termFee = termFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());

		// Fee balance updates
		collectTermFee.setTerm1Balance(new BigDecimal(termFee.getTerm1()).subtract(collectTermFee.getTerm1()));
		collectTermFee.setTerm2Balance(new BigDecimal(termFee.getTerm2()).subtract(collectTermFee.getTerm2()));
		collectTermFee.setTerm3Balance(new BigDecimal(termFee.getTerm3()).subtract(collectTermFee.getTerm3()));

		collectTermFee.setConcession("N");
		collectTermFee.setBilledBy(SecurityContextHolder.getContext().getAuthentication().getName());
		collectTermFee.setDateOfTransaction(new Date(new java.util.Date().getTime()));

		// txn ref code - WhoPaid_TotalAmt_Biller_DateTime
		collectTermFee.setTransactionUniqueReferenceCode(name + "_" + collectFee.getCollectTermFeeForm().getTerm3() + "_" + collectTermFee.getBilledBy() + "_" + new java.util.Date().getTime());
		collectTermFee.setSchoolUniqueIdentifier(schoolUniqueId);
		collectTermFee.setStd(std);
		collectTermFee.setSec(sec);
		collectTermFee.setAcademicYear(masterFeeConfig.getAcademicYear());
		collectTermFee.setName(name);
		collectTermFee.setRollNo(rollNo);

		// status
		int result = collectTermFee.getTerm3().compareTo(new BigDecimal(termFee.getTerm3()));
		if (result == -1) {
			collectTermFee.setTerm3Status("PENDING");
		} else if (result == 1) {
			collectTermFee.setTerm3Status("OVER-PAID");
		} else if (result == 0) {
			collectTermFee.setTerm3Status("COMPLETED");
		}
		collectTermFee.setTerm1Status(collectTermFeeRecent.getTerm1Status());
		collectTermFee.setTerm2Status(collectTermFeeRecent.getTerm2Status());
		collectFee.setCollectTermFee(collectTermFee);
		collectTermFeeService.saveCollectTermFee(collectFee.getCollectTermFee());
		return "admin";
	}

	@RequestMapping(value = "/collectFee", method = RequestMethod.POST, params = "action=SubmitJan")
	public String collectFeeJan(ModelAndView modelAndView, CollectFee collectFee, @RequestParam("MonthCtrl") String MonthCtrl, @RequestParam("Janname") String nameAndRoll, @RequestParam("Janstd") String std, @RequestParam("Jansec") String sec) {
		String schoolUniqueId = userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier();
		String rollNo = nameAndRoll.split("-")[0];
		String name = nameAndRoll.split("-")[1];
		CollectMonthlyFee collectMonthlyFeeRecent = collectMonthlyFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, std, sec, rollNo);
		CollectMonthlyFee collectMonthlyFee = new CollectMonthlyFee();

		if (null == collectMonthlyFeeRecent) {
			collectMonthlyFeeRecent = new CollectMonthlyFee();
			populateMonthlyFee(collectMonthlyFeeRecent);
		} else {
			collectMonthlyFee.setId(collectMonthlyFeeRecent.getId());
		}
		// Paid fee updates
		populateMonthlyFeePaid(collectMonthlyFee, collectMonthlyFeeRecent);
		collectMonthlyFee.setJanFee(collectFee.getCollectMonthlyFeeForm().getJanFee().add(collectMonthlyFeeRecent.getJanFee()));
		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std,
				"2018-2019");
		MonthlyFee monthlyFee = monthlyFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());
		// Fee balance updates
		populateMonthlyFeeBalance(collectMonthlyFee, monthlyFee);
		collectMonthlyFee.setConcession("N");
		collectMonthlyFee.setBilledBy(SecurityContextHolder.getContext().getAuthentication().getName());
		collectMonthlyFee.setDateOfTransaction(new Date(new java.util.Date().getTime()));
		// txn ref code - WhoPaid_TotalAmt_Biller_DateTime
		collectMonthlyFee.setTransactionUniqueReferenceCode(name + "_" + collectFee.getCollectMonthlyFeeForm().getJanFee() + "_" + collectMonthlyFee.getBilledBy() + "_" + new java.util.Date().getTime());
		collectMonthlyFee.setSchoolUniqueIdentifier(schoolUniqueId);
		collectMonthlyFee.setStd(std);
		collectMonthlyFee.setSec(sec);
		collectMonthlyFee.setAcademicYear(masterFeeConfig.getAcademicYear());
		collectMonthlyFee.setName(name);
		collectMonthlyFee.setRollNo(rollNo);
		finalizeMonthlyFeeStatus(collectMonthlyFee, collectMonthlyFeeRecent);
		// status
		int result = collectMonthlyFee.getJanFee().compareTo(new BigDecimal(monthlyFee.getJanFee()));
		if (result == -1) {
			collectMonthlyFee.setJanStatus("PENDING");
		} else if (result == 1) {
			collectMonthlyFee.setJanStatus("OVER-PAID");
		} else if (result == 0) {
			collectMonthlyFee.setJanStatus("COMPLETED");
		}
		collectFee.setCollectMonthlyFee(collectMonthlyFee);
		collectMonthlyFeeService.saveCollectMonthlyFee(collectFee.getCollectMonthlyFee());
		return "admin";
	}

	private void finalizeMonthlyFeeStatus(CollectMonthlyFee collectMonthlyFee, CollectMonthlyFee collectMonthlyFeeRecent) {
		collectMonthlyFee.setJanStatus(collectMonthlyFeeRecent.getJanStatus());
		collectMonthlyFee.setFebStatus(collectMonthlyFeeRecent.getFebStatus());
		collectMonthlyFee.setMarStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setAprStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setMayStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setJunStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setJulStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setAugStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setSepStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setOctStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setNovStatus(collectMonthlyFeeRecent.getMarStatus());
		collectMonthlyFee.setDecStatus(collectMonthlyFeeRecent.getMarStatus());

	}

	private void populateMonthlyFeeBalance(CollectMonthlyFee collectMonthlyFee, MonthlyFee monthlyFee) {
		collectMonthlyFee.setJanFeeBalance(new BigDecimal(monthlyFee.getJanFee()).subtract(collectMonthlyFee.getJanFee()));
		collectMonthlyFee.setFebFeeBalance(new BigDecimal(monthlyFee.getFebFee()).subtract(collectMonthlyFee.getFebFee()));
		collectMonthlyFee.setMarFeeBalance(new BigDecimal(monthlyFee.getMarFee()).subtract(collectMonthlyFee.getMarFee()));
		collectMonthlyFee.setAprilFeeBalance(new BigDecimal(monthlyFee.getAprilFee()).subtract(collectMonthlyFee.getAprilFee()));
		collectMonthlyFee.setMayFeeBalance(new BigDecimal(monthlyFee.getMayFee()).subtract(collectMonthlyFee.getMayFee()));
		collectMonthlyFee.setJunFeeBalance(new BigDecimal(monthlyFee.getJunFee()).subtract(collectMonthlyFee.getJunFee()));
		collectMonthlyFee.setJulFeeBalance(new BigDecimal(monthlyFee.getJulFee()).subtract(collectMonthlyFee.getJulFee()));
		collectMonthlyFee.setAugFeeBalance(new BigDecimal(monthlyFee.getAugFee()).subtract(collectMonthlyFee.getAugFee()));
		collectMonthlyFee.setSepFeeBalance(new BigDecimal(monthlyFee.getSepFee()).subtract(collectMonthlyFee.getSepFee()));
		collectMonthlyFee.setOctFeeBalance(new BigDecimal(monthlyFee.getOctFee()).subtract(collectMonthlyFee.getOctFee()));
		collectMonthlyFee.setNovFeeBalance(new BigDecimal(monthlyFee.getNovFee()).subtract(collectMonthlyFee.getNovFee()));
		collectMonthlyFee.setDecFeeBalance(new BigDecimal(monthlyFee.getDecFee()).subtract(collectMonthlyFee.getDecFee()));

	}

	private void populateMonthlyFeePaid(CollectMonthlyFee collectMonthlyFee, CollectMonthlyFee collectMonthlyFeeRecent) {
		collectMonthlyFee.setJanFee(collectMonthlyFeeRecent.getJanFee());
		collectMonthlyFee.setFebFee(collectMonthlyFeeRecent.getFebFee());
		collectMonthlyFee.setMarFee(collectMonthlyFeeRecent.getMarFee());
		collectMonthlyFee.setAprilFee(collectMonthlyFeeRecent.getAprilFee());
		collectMonthlyFee.setMayFee(collectMonthlyFeeRecent.getMayFee());
		collectMonthlyFee.setJunFee(collectMonthlyFeeRecent.getJunFee());
		collectMonthlyFee.setJulFee(collectMonthlyFeeRecent.getJulFee());
		collectMonthlyFee.setAugFee(collectMonthlyFeeRecent.getAugFee());
		collectMonthlyFee.setSepFee(collectMonthlyFeeRecent.getSepFee());
		collectMonthlyFee.setOctFee(collectMonthlyFeeRecent.getOctFee());
		collectMonthlyFee.setNovFee(collectMonthlyFeeRecent.getNovFee());
		collectMonthlyFee.setDecFee(collectMonthlyFeeRecent.getDecFee());
	}

	private void populateMonthlyFee(CollectMonthlyFee collectMonthlyFeeRecent) {
		collectMonthlyFeeRecent.setJanFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setFebFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setMarFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setAprilFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setMayFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setJunFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setJulFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setAugFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setSepFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setOctFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setNovFee(new BigDecimal(0));
		collectMonthlyFeeRecent.setDecFee(new BigDecimal(0));

		collectMonthlyFeeRecent.setJanStatus("PENDING");
		collectMonthlyFeeRecent.setFebStatus("PENDING");
		collectMonthlyFeeRecent.setFebStatus("PENDING");
		collectMonthlyFeeRecent.setMarStatus("PENDING");
		collectMonthlyFeeRecent.setAprStatus("PENDING");
		collectMonthlyFeeRecent.setMayStatus("PENDING");
		collectMonthlyFeeRecent.setJunStatus("PENDING");
		collectMonthlyFeeRecent.setJulStatus("PENDING");
		collectMonthlyFeeRecent.setAugStatus("PENDING");
		collectMonthlyFeeRecent.setSepStatus("PENDING");
		collectMonthlyFeeRecent.setOctStatus("PENDING");
		collectMonthlyFeeRecent.setNovStatus("PENDING");
		collectMonthlyFeeRecent.setDecStatus("PENDING");

	}

	@RequestMapping(value = "/collectFee", method = RequestMethod.POST, params = "action=SubmitAdm")
	public String collectFee(ModelAndView modelAndView, CollectFee collectFee, @RequestParam("Cname") String nameAndRoll, @RequestParam("Cstd") String std, @RequestParam("Csec") String sec) {
		String schoolUniqueId = userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier();
		String rollNo = nameAndRoll.split("-")[0];
		String name = nameAndRoll.split("-")[1];

		CollectAdmissionFee collectAdmissionFeeRecent = collectAdmissionFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, std, sec, rollNo);
		CollectAdmissionFee collectAdmissionFee = new CollectAdmissionFee();

		if (null == collectAdmissionFeeRecent) {
			collectAdmissionFeeRecent = new CollectAdmissionFee();
			collectAdmissionFeeRecent.setBooksFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setComputerFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setExtraCurricularFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setHostelFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setNoteBooksFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setShoeFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setSmartClassFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setTuitionFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setUniformBeltFee(new BigDecimal(0));
			collectAdmissionFeeRecent.setParticular1Fee(new BigDecimal(0));
			collectAdmissionFeeRecent.setParticular2Fee(new BigDecimal(0));
			collectAdmissionFeeRecent.setParticular3Fee(new BigDecimal(0));
			//
		} else {
			collectAdmissionFee.setId(collectAdmissionFeeRecent.getId());
		}

		// Paid fee updates
		collectAdmissionFee.setBooksFee(collectFee.getCollectAdmissionFeeForm().getBooksFee().add(collectAdmissionFeeRecent.getBooksFee()));
		collectAdmissionFee.setComputerFee(collectFee.getCollectAdmissionFeeForm().getComputerFee().add(collectAdmissionFeeRecent.getComputerFee()));
		collectAdmissionFee.setExtraCurricularFee(collectFee.getCollectAdmissionFeeForm().getExtraCurricularFee().add(collectAdmissionFeeRecent.getExtraCurricularFee()));
		collectAdmissionFee.setHostelFee(collectFee.getCollectAdmissionFeeForm().getHostelFee().add(collectAdmissionFeeRecent.getHostelFee()));
		collectAdmissionFee.setNoteBooksFee(collectFee.getCollectAdmissionFeeForm().getNoteBooksFee().add(collectAdmissionFeeRecent.getNoteBooksFee()));
		collectAdmissionFee.setShoeFee(collectFee.getCollectAdmissionFeeForm().getShoeFee().add(collectAdmissionFeeRecent.getShoeFee()));
		collectAdmissionFee.setSmartClassFee(collectFee.getCollectAdmissionFeeForm().getSmartClassFee().add(collectAdmissionFeeRecent.getSmartClassFee()));
		collectAdmissionFee.setTuitionFee(collectFee.getCollectAdmissionFeeForm().getTuitionFee().add(collectAdmissionFeeRecent.getTuitionFee()));
		collectAdmissionFee.setUniformBeltFee(collectFee.getCollectAdmissionFeeForm().getUniformBeltFee().add(collectAdmissionFeeRecent.getUniformBeltFee()));
		collectAdmissionFee.setParticular1Fee(collectFee.getCollectAdmissionFeeForm().getParticular1Fee().add(collectAdmissionFeeRecent.getParticular1Fee()));
		collectAdmissionFee.setParticular2Fee(collectFee.getCollectAdmissionFeeForm().getParticular2Fee().add(collectAdmissionFeeRecent.getParticular2Fee()));
		collectAdmissionFee.setParticular3Fee(collectFee.getCollectAdmissionFeeForm().getParticular3Fee().add(collectAdmissionFeeRecent.getParticular3Fee()));

		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std,
				"2018-2019");
		AdmissionFee admissionFee = admissionFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());
		AdmissionExtras admissionExtras = admissionExtrasService.findByMasterFeeUniqueId(masterFeeConfig.getId());
		// Fee Balances Updates
		collectAdmissionFee.setBooksFeeBalance(new BigDecimal(admissionFee.getBooksFee()).subtract(collectAdmissionFee.getBooksFee()));
		collectAdmissionFee.setComputerFeeBalance(new BigDecimal(admissionFee.getComputerFee()).subtract(collectAdmissionFee.getComputerFee()));
		collectAdmissionFee.setExtraCurricularFeeBalance(new BigDecimal(admissionFee.getExtraCurricularFee()).subtract(collectAdmissionFee.getExtraCurricularFee()));
		collectAdmissionFee.setHostelFeeBalance(new BigDecimal(admissionFee.getHostelFee()).subtract(collectAdmissionFee.getHostelFee()));
		collectAdmissionFee.setNoteBooksFeeBalance(new BigDecimal(admissionFee.getNoteBooksFee()).subtract(collectAdmissionFee.getNoteBooksFee()));
		collectAdmissionFee.setShoeFeeBalance(new BigDecimal(admissionFee.getShoeFee()).subtract(collectAdmissionFee.getShoeFee()));
		collectAdmissionFee.setSmartClassFeeBalance(new BigDecimal(admissionFee.getSmartClassFee()).subtract(collectAdmissionFee.getSmartClassFee()));
		collectAdmissionFee.setTuitionFeeBalance(new BigDecimal(admissionFee.getTuitionFee()).subtract(collectAdmissionFee.getTuitionFee()));
		collectAdmissionFee.setUniformBeltFeeBalance(new BigDecimal(admissionFee.getUniformBeltFee()).subtract(collectAdmissionFee.getUniformBeltFee()));
		collectAdmissionFee.setParticular1FeeBalance(new BigDecimal(admissionExtras.getParticular1Fee()).subtract(collectAdmissionFee.getParticular1Fee()));
		collectAdmissionFee.setParticular2FeeBalance(new BigDecimal(admissionExtras.getParticular2Fee()).subtract(collectAdmissionFee.getParticular2Fee()));
		collectAdmissionFee.setParticular3FeeBalance(new BigDecimal(admissionExtras.getParticular3Fee()).subtract(collectAdmissionFee.getParticular3Fee()));

		// totalPaid
		BigDecimal totalFeePaid = collectAdmissionFee.getBooksFee().add(collectAdmissionFee.getComputerFee()).add(collectAdmissionFee.getExtraCurricularFee()).add(collectAdmissionFee.getHostelFee()).add(collectAdmissionFee.getNoteBooksFee())
				.add(collectAdmissionFee.getShoeFee()).add(collectAdmissionFee.getSmartClassFee()).add(collectAdmissionFee.getTuitionFee()).add(collectAdmissionFee.getUniformBeltFee()).add(collectAdmissionFee.getParticular1Fee())
				.add(collectAdmissionFee.getParticular2Fee()).add(collectAdmissionFee.getParticular3Fee());

		// totalfromConfig
		BigDecimal admissionTotal = new BigDecimal(admissionFee.getBooksFee()).add(new BigDecimal(admissionFee.getComputerFee())).add(new BigDecimal(admissionFee.getExtraCurricularFee())).add(new BigDecimal(admissionFee.getHostelFee()))
				.add(new BigDecimal(admissionFee.getNoteBooksFee())).add(new BigDecimal(admissionFee.getShoeFee())).add(new BigDecimal(admissionFee.getSmartClassFee())).add(new BigDecimal(admissionFee.getTuitionFee()))
				.add(new BigDecimal(admissionFee.getUniformBeltFee())).add(new BigDecimal(admissionExtras.getParticular1Fee())).add(new BigDecimal(admissionExtras.getParticular2Fee())).add(new BigDecimal(admissionExtras.getParticular3Fee()));
		// Total balance
		collectAdmissionFee.setBalance(admissionTotal.subtract(totalFeePaid));

		collectAdmissionFee.setConcession("N");
		collectAdmissionFee.setBilledBy(SecurityContextHolder.getContext().getAuthentication().getName());
		collectAdmissionFee.setDateOfTransaction(new Date(new java.util.Date().getTime()));

		// txn ref code - WhoPaid_TotalAmt_Biller_DateTime
		collectAdmissionFee.setTransactionUniqueReferenceCode(name + "_" + totalFeePaid + "_" + collectAdmissionFee.getBilledBy() + "_" + new java.util.Date().getTime());
		collectAdmissionFee.setSchoolUniqueIdentifier(schoolUniqueId);
		collectAdmissionFee.setStd(std);
		collectAdmissionFee.setSec(sec);
		collectAdmissionFee.setAcademicYear(masterFeeConfig.getAcademicYear());
		collectAdmissionFee.setName(name);
		collectAdmissionFee.setRollNo(rollNo);

		// status
		int result = totalFeePaid.compareTo(admissionTotal);
		if (result == -1) {
			collectAdmissionFee.setStatus("PENDING");
		} else if (result == 1) {
			collectAdmissionFee.setStatus("OVER-PAID");
		} else if (result == 0) {
			collectAdmissionFee.setStatus("COMPLETED");
		}
		collectFee.setCollectAdmissionFee(collectAdmissionFee);
		collectAdmissionFeeService.saveCollectAdmissionFee(collectFee.getCollectAdmissionFee());
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
		List<String> sections = studentDetailsService.getSecByStd(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(), std);
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

		if ("NA".equals(collectFee.getStudentId_Name()) || "NA".equals(collectFee.getStd()) || "NA".equals(collectFee.getSec())) {
			model.addAttribute("standards", getStandards());
			modelAndView.addObject("collectFee", new CollectFee());
			modelAndView.addObject("configureMasterFee", "Oops!  You don't seem to have selected proper options.");
			modelAndView.setViewName("collectfee");
			return modelAndView;
		}

		MasterFeeConfig masterFeeConfig = masterFeeConfigService.findBySchoolUniqueIdentifierAndStdAndAcademicYear(userService.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()).getSchoolUniqueIdentifier(),
				collectFee.getStd(), "2018-2019");

		if (null == masterFeeConfig || null == masterFeeConfig.getTypeOfFee()) {
			model.addAttribute("standards", getStandards());
			modelAndView.addObject("collectFee", new CollectFee());
			modelAndView.addObject("configureMasterFee", "Oops!  You don't seem to have configured the master fee configuration for this standard.Please configure now.");
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
		BigDecimal admissionTotal = new BigDecimal(admissionFee.getBooksFee()).add(new BigDecimal(admissionFee.getComputerFee())).add(new BigDecimal(admissionFee.getExtraCurricularFee())).add(new BigDecimal(admissionFee.getHostelFee()))
				.add(new BigDecimal(admissionFee.getNoteBooksFee())).add(new BigDecimal(admissionFee.getShoeFee())).add(new BigDecimal(admissionFee.getSmartClassFee())).add(new BigDecimal(admissionFee.getTuitionFee()))
				.add(new BigDecimal(admissionFee.getUniformBeltFee())).add(new BigDecimal(admissionExtras.getParticular1Fee())).add(new BigDecimal(admissionExtras.getParticular2Fee())).add(new BigDecimal(admissionExtras.getParticular3Fee()));
		collectFee.setAdmissionFeeTotal(admissionTotal);

		CollectAdmissionFee collectAdmissionFee = collectAdmissionFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, collectFee.getStd(), collectFee.getSec(), rollNo);

		if (collectAdmissionFee != null) {
			BigDecimal admissionPaidTotal = collectAdmissionFee.getBooksFee().add(collectAdmissionFee.getComputerFee()).add(collectAdmissionFee.getExtraCurricularFee()).add(collectAdmissionFee.getHostelFee())
					.add(collectAdmissionFee.getNoteBooksFee()).add(collectAdmissionFee.getShoeFee()).add(collectAdmissionFee.getSmartClassFee()).add(collectAdmissionFee.getTuitionFee()).add(collectAdmissionFee.getUniformBeltFee())
					.add(collectAdmissionFee.getParticular1Fee()).add(collectAdmissionFee.getParticular2Fee()).add(collectAdmissionFee.getParticular3Fee());
			collectFee.setAdmissionPaidTotal(admissionPaidTotal);

			collectFee.setCollectAdmissionFeeForm(new CollectAdmissionFeeForm());
			// Populate how much they have to collect..
			collectFee.getCollectAdmissionFeeForm().setBooksFee(collectAdmissionFee.getBooksFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setComputerFee(collectAdmissionFee.getComputerFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setExtraCurricularFee(collectAdmissionFee.getExtraCurricularFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setHostelFee(collectAdmissionFee.getHostelFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setNoteBooksFee(collectAdmissionFee.getNoteBooksFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setShoeFee(collectAdmissionFee.getShoeFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setSmartClassFee(collectAdmissionFee.getSmartClassFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setTuitionFee(collectAdmissionFee.getTuitionFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setUniformBeltFee(collectAdmissionFee.getUniformBeltFeeBalance());
			collectFee.getCollectAdmissionFeeForm().setParticular1Fee(collectAdmissionFee.getParticular1FeeBalance());
			collectFee.getCollectAdmissionFeeForm().setParticular2Fee(collectAdmissionFee.getParticular2FeeBalance());
			collectFee.getCollectAdmissionFeeForm().setParticular3Fee(collectAdmissionFee.getParticular3FeeBalance());

			collectFee.getCollectAdmissionFeeForm().setBalance(collectAdmissionFee.getBalance());
			collectFee.getCollectAdmissionFeeForm().setStatus(collectAdmissionFee.getStatus());

		} else {
			CollectAdmissionFeeForm collectAdmissionFeeNew = new CollectAdmissionFeeForm();
			//
			collectAdmissionFeeNew.setBalance(admissionTotal);
			collectAdmissionFeeNew.setStatus("PENDING");

			collectFee.setCollectAdmissionFeeForm(collectAdmissionFeeNew);
			// Populate how much they have to collect..
			collectFee.getCollectAdmissionFeeForm().setBooksFee(new BigDecimal(admissionFee.getBooksFee()));
			collectFee.getCollectAdmissionFeeForm().setComputerFee(new BigDecimal(admissionFee.getComputerFee()));
			collectFee.getCollectAdmissionFeeForm().setExtraCurricularFee(new BigDecimal(admissionFee.getExtraCurricularFee()));
			collectFee.getCollectAdmissionFeeForm().setHostelFee(new BigDecimal(admissionFee.getHostelFee()));
			collectFee.getCollectAdmissionFeeForm().setNoteBooksFee(new BigDecimal(admissionFee.getNoteBooksFee()));
			collectFee.getCollectAdmissionFeeForm().setShoeFee(new BigDecimal(admissionFee.getShoeFee()));
			collectFee.getCollectAdmissionFeeForm().setSmartClassFee(new BigDecimal(admissionFee.getSmartClassFee()));
			collectFee.getCollectAdmissionFeeForm().setTuitionFee(new BigDecimal(admissionFee.getTuitionFee()));
			collectFee.getCollectAdmissionFeeForm().setUniformBeltFee(new BigDecimal(admissionFee.getUniformBeltFee()));
			collectFee.getCollectAdmissionFeeForm().setParticular1Fee(new BigDecimal(admissionExtras.getParticular1Fee()));
			collectFee.getCollectAdmissionFeeForm().setParticular2Fee(new BigDecimal(admissionExtras.getParticular2Fee()));
			collectFee.getCollectAdmissionFeeForm().setParticular3Fee(new BigDecimal(admissionExtras.getParticular3Fee()));

		}

		// Extra- Particulars Label

		collectFee.setParticular1Label(admissionExtras.getParticular1Label());
		collectFee.setParticular2Label(admissionExtras.getParticular2Label());
		collectFee.setParticular3Label(admissionExtras.getParticular3Label());

		collectFee.getCollectAdmissionFeeForm().setName(collectFee.getStudentId_Name());
		collectFee.getCollectAdmissionFeeForm().setStd(collectFee.getStd());
		collectFee.getCollectAdmissionFeeForm().setSec(collectFee.getSec());

		switch (feeType) {
		case "T":
			TermFee termFee = termFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());
			collectFee.setTermFee(termFee);

			CollectTermFee collectTermFee = collectTermFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, collectFee.getStd(), collectFee.getSec(), rollNo);
			if (null != collectTermFee) {
				collectFee.setTotalTerm1FeePaid(collectTermFee.getTerm1());
				collectFee.setTotalTerm2FeePaid(collectTermFee.getTerm2());
				collectFee.setTotalTerm3FeePaid(collectTermFee.getTerm3());

				collectFee.setCollectTermFeeForm(new CollectTermFeeForm());

				collectFee.getCollectTermFeeForm().setTerm1(collectTermFee.getTerm1Balance());
				collectFee.getCollectTermFeeForm().setTerm2(collectTermFee.getTerm2Balance());
				collectFee.getCollectTermFeeForm().setTerm3(collectTermFee.getTerm3Balance());

				collectFee.getCollectTermFeeForm().setTerm1Balance(collectTermFee.getTerm1Balance());
				collectFee.getCollectTermFeeForm().setTerm2Balance(collectTermFee.getTerm2Balance());
				collectFee.getCollectTermFeeForm().setTerm3Balance(collectTermFee.getTerm3Balance());

				collectFee.getCollectTermFeeForm().setTerm1Status(collectTermFee.getTerm1Status());
				collectFee.getCollectTermFeeForm().setTerm2Status(collectTermFee.getTerm2Status());
				collectFee.getCollectTermFeeForm().setTerm3Status(collectTermFee.getTerm3Status());
			} else {
				collectFee.setCollectTermFeeForm(new CollectTermFeeForm());

				collectFee.getCollectTermFeeForm().setTerm1(new BigDecimal(termFee.getTerm1()));
				collectFee.getCollectTermFeeForm().setTerm2(new BigDecimal(termFee.getTerm2()));
				collectFee.getCollectTermFeeForm().setTerm3(new BigDecimal(termFee.getTerm3()));

				collectFee.getCollectTermFeeForm().setTerm1Balance(new BigDecimal(termFee.getTerm1()));
				collectFee.getCollectTermFeeForm().setTerm2Balance(new BigDecimal(termFee.getTerm2()));
				collectFee.getCollectTermFeeForm().setTerm3Balance(new BigDecimal(termFee.getTerm3()));

				collectFee.getCollectTermFeeForm().setTerm1Status("PENDING");
				collectFee.getCollectTermFeeForm().setTerm2Status("PENDING");
				collectFee.getCollectTermFeeForm().setTerm3Status("PENDING");
			}

			collectFee.getCollectTermFeeForm().setName(collectFee.getStudentId_Name());
			collectFee.getCollectTermFeeForm().setStd(collectFee.getStd());
			collectFee.getCollectTermFeeForm().setSec(collectFee.getSec());

			break;
		case "M":
			MonthlyFee monthlyFee = monthlyFeeService.findByMasterFeeUniqueId(masterFeeConfig.getId());
			collectFee.setMonthlyFee(monthlyFee);
			CollectMonthlyFee collectMonthlyFee = collectMonthlyFeeService.findBySchoolUniqueIdAndStdSecAndRollNo(schoolUniqueId, collectFee.getStd(), collectFee.getSec(), rollNo);

			if (collectMonthlyFee != null) {

				collectFee.setCollectMonthlyFeeForm(new CollectMonthlyFeeForm());
				// Populate how much they have to collect..
				collectFee.getCollectMonthlyFeeForm().setJanFee(collectMonthlyFee.getJanFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setFebFee(collectMonthlyFee.getFebFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setMarFee(collectMonthlyFee.getMarFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setAprilFee(collectMonthlyFee.getAprilFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setMayFee(collectMonthlyFee.getMayFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setJunFee(collectMonthlyFee.getJunFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setJulFee(collectMonthlyFee.getJulFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setAugFee(collectMonthlyFee.getAugFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setSepFee(collectMonthlyFee.getSepFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setOctFee(collectMonthlyFee.getOctFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setNovFee(collectMonthlyFee.getNovFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setDecFee(collectMonthlyFee.getDecFeeBalance());

				// already paid
				collectFee.getCollectMonthlyFeeForm().setJanFeePaid(collectMonthlyFee.getJanFee());
				collectFee.getCollectMonthlyFeeForm().setFebFeePaid(collectMonthlyFee.getFebFee());
				collectFee.getCollectMonthlyFeeForm().setMarFeePaid(collectMonthlyFee.getMarFee());
				collectFee.getCollectMonthlyFeeForm().setAprilFeePaid(collectMonthlyFee.getAprilFee());
				collectFee.getCollectMonthlyFeeForm().setMayFeePaid(collectMonthlyFee.getMayFee());
				collectFee.getCollectMonthlyFeeForm().setJunFeePaid(collectMonthlyFee.getJunFee());
				collectFee.getCollectMonthlyFeeForm().setJulFeePaid(collectMonthlyFee.getJulFee());
				collectFee.getCollectMonthlyFeeForm().setAugFeePaid(collectMonthlyFee.getAugFee());
				collectFee.getCollectMonthlyFeeForm().setSepFeePaid(collectMonthlyFee.getSepFee());
				collectFee.getCollectMonthlyFeeForm().setOctFeePaid(collectMonthlyFee.getOctFee());
				collectFee.getCollectMonthlyFeeForm().setNovFeePaid(collectMonthlyFee.getNovFee());
				collectFee.getCollectMonthlyFeeForm().setDecFeePaid(collectMonthlyFee.getDecFee());

				collectFee.getCollectMonthlyFeeForm().setJanFeeBalance(collectMonthlyFee.getJanFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setFebFeeBalance(collectMonthlyFee.getFebFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setMarFeeBalance(collectMonthlyFee.getMarFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setAprilFeeBalance(collectMonthlyFee.getAprilFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setMayFeeBalance(collectMonthlyFee.getMayFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setJunFeeBalance(collectMonthlyFee.getJunFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setJulFeeBalance(collectMonthlyFee.getJulFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setAugFeeBalance(collectMonthlyFee.getAugFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setSepFeeBalance(collectMonthlyFee.getSepFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setOctFeeBalance(collectMonthlyFee.getOctFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setNovFeeBalance(collectMonthlyFee.getNovFeeBalance());
				collectFee.getCollectMonthlyFeeForm().setDecFeeBalance(collectMonthlyFee.getDecFeeBalance());

				collectFee.getCollectMonthlyFeeForm().setJanStatus(collectMonthlyFee.getJanStatus());
				collectFee.getCollectMonthlyFeeForm().setFebStatus(collectMonthlyFee.getFebStatus());
				collectFee.getCollectMonthlyFeeForm().setMarStatus(collectMonthlyFee.getMarStatus());
				collectFee.getCollectMonthlyFeeForm().setAprStatus(collectMonthlyFee.getAprStatus());
				collectFee.getCollectMonthlyFeeForm().setMayStatus(collectMonthlyFee.getMayStatus());
				collectFee.getCollectMonthlyFeeForm().setJunStatus(collectMonthlyFee.getJunStatus());
				collectFee.getCollectMonthlyFeeForm().setJulStatus(collectMonthlyFee.getJulStatus());
				collectFee.getCollectMonthlyFeeForm().setAugStatus(collectMonthlyFee.getAugStatus());
				collectFee.getCollectMonthlyFeeForm().setSepStatus(collectMonthlyFee.getSepStatus());
				collectFee.getCollectMonthlyFeeForm().setOctStatus(collectMonthlyFee.getOctStatus());
				collectFee.getCollectMonthlyFeeForm().setNovStatus(collectMonthlyFee.getNovStatus());
				collectFee.getCollectMonthlyFeeForm().setDecStatus(collectMonthlyFee.getDecStatus());

			} else {
				CollectMonthlyFeeForm collectMonthlyFeeNew = new CollectMonthlyFeeForm();
				//
				collectFee.setCollectMonthlyFeeForm(collectMonthlyFeeNew);
				// Populate how much they have to collect..
				collectFee.getCollectMonthlyFeeForm().setJanFee(new BigDecimal(monthlyFee.getJanFee()));
				collectFee.getCollectMonthlyFeeForm().setFebFee(new BigDecimal(monthlyFee.getFebFee()));
				collectFee.getCollectMonthlyFeeForm().setMarFee(new BigDecimal(monthlyFee.getMarFee()));
				collectFee.getCollectMonthlyFeeForm().setAprilFee(new BigDecimal(monthlyFee.getAprilFee()));
				collectFee.getCollectMonthlyFeeForm().setMayFee(new BigDecimal(monthlyFee.getMayFee()));
				collectFee.getCollectMonthlyFeeForm().setJunFee(new BigDecimal(monthlyFee.getJunFee()));
				collectFee.getCollectMonthlyFeeForm().setJulFee(new BigDecimal(monthlyFee.getJulFee()));
				collectFee.getCollectMonthlyFeeForm().setAugFee(new BigDecimal(monthlyFee.getAugFee()));
				collectFee.getCollectMonthlyFeeForm().setSepFee(new BigDecimal(monthlyFee.getSepFee()));
				collectFee.getCollectMonthlyFeeForm().setOctFee(new BigDecimal(monthlyFee.getOctFee()));
				collectFee.getCollectMonthlyFeeForm().setNovFee(new BigDecimal(monthlyFee.getNovFee()));
				collectFee.getCollectMonthlyFeeForm().setDecFee(new BigDecimal(monthlyFee.getDecFee()));

				collectFee.getCollectMonthlyFeeForm().setJanFeeBalance(new BigDecimal(monthlyFee.getJanFee()));
				collectFee.getCollectMonthlyFeeForm().setFebFeeBalance(new BigDecimal(monthlyFee.getFebFee()));
				collectFee.getCollectMonthlyFeeForm().setMarFeeBalance(new BigDecimal(monthlyFee.getMarFee()));
				collectFee.getCollectMonthlyFeeForm().setAprilFeeBalance(new BigDecimal(monthlyFee.getAprilFee()));
				collectFee.getCollectMonthlyFeeForm().setMayFeeBalance(new BigDecimal(monthlyFee.getMayFee()));
				collectFee.getCollectMonthlyFeeForm().setJunFeeBalance(new BigDecimal(monthlyFee.getJunFee()));
				collectFee.getCollectMonthlyFeeForm().setJulFeeBalance(new BigDecimal(monthlyFee.getJulFee()));
				collectFee.getCollectMonthlyFeeForm().setAugFeeBalance(new BigDecimal(monthlyFee.getAugFee()));
				collectFee.getCollectMonthlyFeeForm().setSepFeeBalance(new BigDecimal(monthlyFee.getSepFee()));
				collectFee.getCollectMonthlyFeeForm().setOctFeeBalance(new BigDecimal(monthlyFee.getOctFee()));
				collectFee.getCollectMonthlyFeeForm().setNovFeeBalance(new BigDecimal(monthlyFee.getNovFee()));
				collectFee.getCollectMonthlyFeeForm().setDecFeeBalance(new BigDecimal(monthlyFee.getDecFee()));

				collectFee.getCollectMonthlyFeeForm().setJanStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setFebStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setMarStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setAprStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setMayStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setJunStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setJulStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setAugStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setSepStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setOctStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setNovStatus("PENDING");
				collectFee.getCollectMonthlyFeeForm().setDecStatus("PENDING");

			}

			collectFee.getCollectMonthlyFeeForm().setName(collectFee.getStudentId_Name());
			collectFee.getCollectMonthlyFeeForm().setStd(collectFee.getStd());
			collectFee.getCollectMonthlyFeeForm().setSec(collectFee.getSec());

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
