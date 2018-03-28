package com.epyloc.schools360.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.UserRoles;

@Repository("userRolesRepository")
public interface UserRolesRepository extends CrudRepository<UserRoles, Long> {
}