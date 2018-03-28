package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.MonthlyFee;
import com.epyloc.schools360.repository.MonthlyFeeRepository;

@Service("monthlyFeeService")
public class MonthlyFeeService {

	private MonthlyFeeRepository monthlyFeeRepository;

	@Autowired
	public MonthlyFeeService(MonthlyFeeRepository monthlyFeeRepository) {
		this.monthlyFeeRepository = monthlyFeeRepository;
	}

	@Transactional
	public void saveTermFee(MonthlyFee MonthlyFee) {
		monthlyFeeRepository.save(MonthlyFee);
	}

	@Transactional
	public MonthlyFee findByMasterFeeUniqueId(Integer master_fee_config_uniqueidentifier) {
		return monthlyFeeRepository.findByMasterFeeUniqueId(master_fee_config_uniqueidentifier);
	}

}