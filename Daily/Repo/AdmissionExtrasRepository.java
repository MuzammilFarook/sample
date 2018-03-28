package com.epyloc.schools360.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.AdmissionExtras;

@Repository("admissionExtrasRepository")
public interface AdmissionExtrasRepository extends CrudRepository<AdmissionExtras, Long> {
	@Query(value = "SELECT * FROM admission_extras_fee_fl WHERE master_fee_config_uniqueidentifier = :master_fee_config_uniqueidentifier", nativeQuery = true)
	AdmissionExtras findByMasterFeeUniqueId(@Param("master_fee_config_uniqueidentifier") Integer master_fee_config_uniqueidentifier);
}