package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.CollectMonthlyFee;
import com.epyloc.schools360.repository.CollectMonthlyFeeRepository;

@Service("collectMonthlyFeeService")
public class CollectMonthlyFeeService {

	private CollectMonthlyFeeRepository collectMonthlyFeeRepository;

	@Autowired
	public CollectMonthlyFeeService(CollectMonthlyFeeRepository collectMonthlyFeeRepository) {
		this.collectMonthlyFeeRepository = collectMonthlyFeeRepository;
	}

	@Transactional
	public void saveCollectMonthlyFee(CollectMonthlyFee MonthlyFee) {
		collectMonthlyFeeRepository.save(MonthlyFee);
	}

	@Transactional
	public CollectMonthlyFee findBySchoolUniqueIdAndStdSecAndRollNo(String schooluniqueidentifier, String std, String sec, String rollNo) {
		return collectMonthlyFeeRepository.findBySchoolUniqueIdAndStdSecAndRollNo(schooluniqueidentifier, std, sec, rollNo);
	}
}