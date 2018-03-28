package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.CollectAdmissionFee;
import com.epyloc.schools360.repository.CollectAdmissionFeeRepository;

@Service("collectAdmissionFeeService")
public class CollectAdmissionFeeService {

	private CollectAdmissionFeeRepository collectAdmissionFeeRepository;

	@Autowired
	public CollectAdmissionFeeService(CollectAdmissionFeeRepository collectAdmissionFeeRepository) {
		this.collectAdmissionFeeRepository = collectAdmissionFeeRepository;
	}

	@Transactional
	public void saveCollectAdmissionFee(CollectAdmissionFee admissionFee) {
		collectAdmissionFeeRepository.save(admissionFee);
	}

	@Transactional
	public CollectAdmissionFee findBySchoolUniqueIdAndStdSecAndRollNo(String schooluniqueidentifier, String std, String sec, String rollNo) {
		return collectAdmissionFeeRepository.findBySchoolUniqueIdAndStdSecAndRollNo(schooluniqueidentifier, std, sec, rollNo);
	}
}