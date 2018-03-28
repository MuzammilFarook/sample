package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.AnnualFee;
import com.epyloc.schools360.repository.AnnualFeeRepository;

@Service("annualFeeService")
public class AnnualFeeService {

	private AnnualFeeRepository annualFeeRepository;

	@Autowired
	public AnnualFeeService(AnnualFeeRepository annualFeeRepository) {
		this.annualFeeRepository = annualFeeRepository;
	}

	@Transactional
	public void saveTermFee(AnnualFee annualFee) {
		annualFeeRepository.save(annualFee);
	}

	@Transactional
	public AnnualFee findByMasterFeeUniqueId(Integer master_fee_config_uniqueidentifier) {
		return annualFeeRepository.findByMasterFeeUniqueId(master_fee_config_uniqueidentifier);
	}

}