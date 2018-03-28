package com.epyloc.schools360.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.CollectMonthlyFee;

@Repository("collectMonthlyFeeRepository")
public interface CollectMonthlyFeeRepository extends CrudRepository<CollectMonthlyFee, Long> {
	@Query(value = "SELECT * FROM collect_monthly_fee_fl WHERE schooluniqueidentifier = :schooluniqueidentifier AND std = :std AND sec = :sec AND roll_no = :rollNo", nativeQuery = true)
	CollectMonthlyFee findBySchoolUniqueIdAndStdSecAndRollNo(@Param("schooluniqueidentifier") String schooluniqueidentifier, @Param("std") String std, @Param("sec") String sec, @Param("rollNo") String rollNo);
}