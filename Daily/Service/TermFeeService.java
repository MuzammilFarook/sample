package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.TermFee;
import com.epyloc.schools360.repository.TermFeeRepository;

@Service("termFeeService")
public class TermFeeService {

	private TermFeeRepository termFeeRepository;

	@Autowired
	public TermFeeService(TermFeeRepository termFeeRepository) {
		this.termFeeRepository = termFeeRepository;
	}

	@Transactional
	public void saveTermFee(TermFee termFee) {
		termFeeRepository.save(termFee);
	}

	@Transactional
	public TermFee findByMasterFeeUniqueId(Integer master_fee_config_uniqueidentifier) {
		return termFeeRepository.findByMasterFeeUniqueId(master_fee_config_uniqueidentifier);
	}

}