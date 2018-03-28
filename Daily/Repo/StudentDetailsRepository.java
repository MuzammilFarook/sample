package com.epyloc.schools360.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.StudentDetails;

@Repository("studentDetailsRepository")
public interface StudentDetailsRepository extends CrudRepository<StudentDetails, Long> {
	StudentDetails findByAdmissionNo(String admissionNo);

	StudentDetails findByRollNo(String rollNo);

	@Query(value = "SELECT * FROM student_details_fl WHERE schooluniqueidentifier = :schoolUniqueIdentifier and std = :std and sec = :sec", nativeQuery = true)
	List<StudentDetails> getListOfStudentsByStdAndSec(@Param("schoolUniqueIdentifier") String schoolUniqueIdentifier, @Param("std") String std, @Param("sec") String sec);

	@Query(value = "SELECT DISTINCT sec FROM student_details_fl WHERE schooluniqueidentifier = :schoolUniqueIdentifier and std = :std", nativeQuery = true)
	List<String> getSecByStd(@Param("schoolUniqueIdentifier") String schoolUniqueIdentifier, @Param("std") String std);

	@Query(value = "SELECT std FROM student_details_fl WHERE schooluniqueidentifier = :schoolUniqueIdentifier", nativeQuery = true)
	List<String> getStd(@Param("schoolUniqueIdentifier") String schoolUniqueIdentifier);

	@Query(value = "SELECT * FROM student_details_fl WHERE schooluniqueidentifier = :schoolUniqueIdentifier and name LIKE :name", nativeQuery = true)
	List<StudentDetails> searchByName(@Param("schoolUniqueIdentifier") String schoolUniqueIdentifier, @Param("name") String name);
}