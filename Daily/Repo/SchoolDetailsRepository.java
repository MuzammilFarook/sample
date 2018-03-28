package com.epyloc.schools360.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.SchoolDetails;

@Repository("schoolDetailsRepository")
public interface SchoolDetailsRepository extends CrudRepository<SchoolDetails, Long> {
}