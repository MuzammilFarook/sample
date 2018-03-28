package com.epyloc.schools360.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.UserRoles;
import com.epyloc.schools360.repository.UserRolesRepository;

@Service("userRolesService")
public class UserRolesService {

	private UserRolesRepository userRolesRepository;

	@Autowired
	public UserRolesService(UserRolesRepository userRolesRepository) {
		this.userRolesRepository = userRolesRepository;
	}

	@Transactional
	public void saveUserRole(UserRoles userRoles) {
		userRolesRepository.save(userRoles);
	}

}