package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.AdmissionFee;
import com.epyloc.schools360.repository.AdmissionFeeRepository;

@Service("admissionFeeService")
public class AdmissionFeeService {

	private AdmissionFeeRepository admissionFeeRepository;

	@Autowired
	public AdmissionFeeService(AdmissionFeeRepository admissionFeeRepository) {
		this.admissionFeeRepository = admissionFeeRepository;
	}

	@Transactional
	public void saveAdmissionFee(AdmissionFee admissionFee) {
		admissionFeeRepository.save(admissionFee);
	}

	@Transactional
	public AdmissionFee findByMasterFeeUniqueId(Integer master_fee_config_uniqueidentifier) {
		return admissionFeeRepository.findByMasterFeeUniqueId(master_fee_config_uniqueidentifier);
	}
}