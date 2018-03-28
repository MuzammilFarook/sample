package com.epyloc.schools360.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.Users;
import com.epyloc.schools360.repository.UserRepository;

@Service("userService")
public class UserService {

	private UserRepository userRepository;

	@Autowired
	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Transactional
	public Users findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Transactional
	public Users findByConfirmationToken(String confirmationToken) {
		return userRepository.findByConfirmationToken(confirmationToken);
	}

	@Transactional
	public void saveUser(Users user) {
		userRepository.save(user);
	}

	@Transactional
	public Long findMaxId() {
		return userRepository.getMaxId();
	}

	@Transactional
	public List<Users> searchWithNativeQuery(String username) {
		return userRepository.searchWithNativeQuery(username);
	}

}