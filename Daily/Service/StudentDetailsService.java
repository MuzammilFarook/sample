package com.epyloc.schools360.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epyloc.schools360.model.StudentDetails;
import com.epyloc.schools360.repository.StudentDetailsRepository;

@Service("studentDetailsService")
public class StudentDetailsService {

	private StudentDetailsRepository studentDetailsRepository;

	@Autowired
	public StudentDetailsService(StudentDetailsRepository studentDetailsRepository) {
		this.studentDetailsRepository = studentDetailsRepository;
	}

	@Transactional
	public void saveStudentDetails(StudentDetails studentDetails) {
		studentDetailsRepository.save(studentDetails);
	}

	@Transactional
	public StudentDetails findByAdmissionNo(String admissionNo) {
		return studentDetailsRepository.findByAdmissionNo(admissionNo);
	}

	@Transactional
	public StudentDetails findByRollNo(String rollNo) {
		return studentDetailsRepository.findByRollNo(rollNo);
	}

	@Transactional
	public List<String> getSecByStd(String schoolUniqueIdentifier, String std) {
		return studentDetailsRepository.getSecByStd(schoolUniqueIdentifier, std);

	}

	@Transactional
	public List<StudentDetails> getListOfStudentsByStdAndSec(String schoolUniqueIdentifier, String std, String sec) {
		return studentDetailsRepository.getListOfStudentsByStdAndSec(schoolUniqueIdentifier, std, sec);

	}

	@Transactional
	public List<String> getStd(String schoolUniqueIdentifier) {
		System.out.println("---------------------" + schoolUniqueIdentifier);
		return studentDetailsRepository.getStd(schoolUniqueIdentifier);

	}

	@Transactional
	public List<StudentDetails> searchByName(String schoolUniqueIdentifier, String name) {
		return studentDetailsRepository.searchByName(schoolUniqueIdentifier, name);

	}

}