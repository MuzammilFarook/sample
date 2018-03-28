package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.SchoolDetails;
import com.epyloc.schools360.repository.SchoolDetailsRepository;

@Service("schoolDetailsService")
public class SchoolDetailsService {

	private SchoolDetailsRepository schoolDetailsRepository;

	@Autowired
	public SchoolDetailsService(SchoolDetailsRepository schoolDetailsRepository) {
		this.schoolDetailsRepository = schoolDetailsRepository;
	}

	@Transactional
	public void saveSchoolDetails(SchoolDetails schoolDetails) {
		schoolDetailsRepository.save(schoolDetails);
	}

}