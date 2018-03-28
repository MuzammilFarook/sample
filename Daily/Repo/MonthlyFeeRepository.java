package com.epyloc.schools360.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.MonthlyFee;

@Repository("monthlyFeeRepository")
public interface MonthlyFeeRepository extends CrudRepository<MonthlyFee, Long> {
	@Query(value = "SELECT * FROM monthly_fee_fl WHERE master_fee_config_uniqueidentifier = :master_fee_config_uniqueidentifier", nativeQuery = true)
	MonthlyFee findByMasterFeeUniqueId(@Param("master_fee_config_uniqueidentifier") Integer master_fee_config_uniqueidentifier);
}