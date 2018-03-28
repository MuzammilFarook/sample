package com.epyloc.schools360.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.CollectAnnualFee;

@Repository("collectAnnualFeeRepository")
public interface CollectAnnualFeeRepository extends CrudRepository<CollectAnnualFee, Long> {
	@Query(value = "SELECT * FROM collect_annual_fee_fl WHERE schooluniqueidentifier = :schooluniqueidentifier AND std = :std AND sec = :sec AND roll_no = :rollNo", nativeQuery = true)
	CollectAnnualFee findBySchoolUniqueIdAndStdSecAndRollNo(@Param("schooluniqueidentifier") String schooluniqueidentifier, @Param("std") String std, @Param("sec") String sec, @Param("rollNo") String rollNo);
}