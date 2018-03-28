package com.epyloc.schools360.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.MasterFeeConfig;

@Repository("masterFeeConfigRepository")
public interface MasterFeeConfigRepository extends CrudRepository<MasterFeeConfig, Long> {
	MasterFeeConfig findBySchoolUniqueIdentifierAndStdAndAcademicYear(String schoolUniqueIdentifier, String std, String academicYear);
}