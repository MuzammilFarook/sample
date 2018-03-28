package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.MasterFeeConfig;
import com.epyloc.schools360.repository.MasterFeeConfigRepository;

@Service("masterFeeConfigService")
public class MasterFeeConfigService {

	private MasterFeeConfigRepository masterFeeConfigRepository;

	@Autowired
	public MasterFeeConfigService(MasterFeeConfigRepository masterFeeConfigRepository) {
		this.masterFeeConfigRepository = masterFeeConfigRepository;
	}

	@Transactional
	public void saveMasterFeeConfig(MasterFeeConfig masterFeeConfig) {
		masterFeeConfigRepository.save(masterFeeConfig);
	}

	@Transactional
	public MasterFeeConfig findBySchoolUniqueIdentifierAndStdAndAcademicYear(String schoolUniqueIdentifier, String std, String academicYear) {
		return masterFeeConfigRepository.findBySchoolUniqueIdentifierAndStdAndAcademicYear(schoolUniqueIdentifier, std, academicYear);

	}

}