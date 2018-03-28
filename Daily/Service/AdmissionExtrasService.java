package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.AdmissionExtras;
import com.epyloc.schools360.repository.AdmissionExtrasRepository;

@Service("admissionExtrasService")
public class AdmissionExtrasService {

	private AdmissionExtrasRepository admissionExtrasRepository;

	@Autowired
	public AdmissionExtrasService(AdmissionExtrasRepository admissionExtrasRepository) {
		this.admissionExtrasRepository = admissionExtrasRepository;
	}

	@Transactional
	public void saveAdmissionExtras(AdmissionExtras admissionExtras) {
		admissionExtrasRepository.save(admissionExtras);
	}

	@Transactional
	public AdmissionExtras findByMasterFeeUniqueId(Integer master_fee_config_uniqueidentifier) {
		return admissionExtrasRepository.findByMasterFeeUniqueId(master_fee_config_uniqueidentifier);
	}
}