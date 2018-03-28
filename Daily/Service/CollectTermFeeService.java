package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.CollectTermFee;
import com.epyloc.schools360.repository.CollectTermFeeRepository;

@Service("collectTermFeeService")
public class CollectTermFeeService {

	private CollectTermFeeRepository collectTermFeeRepository;

	@Autowired
	public CollectTermFeeService(CollectTermFeeRepository collectTermFeeRepository) {
		this.collectTermFeeRepository = collectTermFeeRepository;
	}

	@Transactional
	public void saveCollectTermFee(CollectTermFee TermFee) {
		collectTermFeeRepository.save(TermFee);
	}

	@Transactional
	public CollectTermFee findBySchoolUniqueIdAndStdSecAndRollNo(String schooluniqueidentifier, String std, String sec, String rollNo) {
		return collectTermFeeRepository.findBySchoolUniqueIdAndStdSecAndRollNo(schooluniqueidentifier, std, sec, rollNo);
	}
}