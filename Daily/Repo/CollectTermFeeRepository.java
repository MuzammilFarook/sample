package com.epyloc.schools360.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.CollectTermFee;

@Repository("collectTermFeeRepository")
public interface CollectTermFeeRepository extends CrudRepository<CollectTermFee, Long> {
	@Query(value = "SELECT * FROM collect_term_fee_fl WHERE schooluniqueidentifier = :schooluniqueidentifier AND std = :std AND sec = :sec AND roll_no = :rollNo", nativeQuery = true)
	CollectTermFee findBySchoolUniqueIdAndStdSecAndRollNo(@Param("schooluniqueidentifier") String schooluniqueidentifier, @Param("std") String std, @Param("sec") String sec, @Param("rollNo") String rollNo);
}