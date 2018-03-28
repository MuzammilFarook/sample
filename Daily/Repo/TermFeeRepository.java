package com.epyloc.schools360.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.TermFee;

@Repository("termFeeRepository")
public interface TermFeeRepository extends CrudRepository<TermFee, Long> {
	@Query(value = "SELECT * FROM term_fee_fl WHERE master_fee_config_uniqueidentifier = :master_fee_config_uniqueidentifier", nativeQuery = true)
	TermFee findByMasterFeeUniqueId(@Param("master_fee_config_uniqueidentifier") Integer master_fee_config_uniqueidentifier);
}