package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.CollectAnnualFee;
import com.epyloc.schools360.repository.CollectAnnualFeeRepository;

@Service("collectAnnualFeeService")
public class CollectAnnualFeeService {

	private CollectAnnualFeeRepository collectAnnualFeeRepository;

	@Autowired
	public CollectAnnualFeeService(CollectAnnualFeeRepository collectAnnualFeeRepository) {
		this.collectAnnualFeeRepository = collectAnnualFeeRepository;
	}

	@Transactional
	public void saveCollectAnnualFee(CollectAnnualFee AnnualFee) {
		collectAnnualFeeRepository.save(AnnualFee);
	}

	@Transactional
	public CollectAnnualFee findBySchoolUniqueIdAndStdSecAndRollNo(String schooluniqueidentifier, String std, String sec, String rollNo) {
		return collectAnnualFeeRepository.findBySchoolUniqueIdAndStdSecAndRollNo(schooluniqueidentifier, std, sec, rollNo);
	}
}