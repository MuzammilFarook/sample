package com.epyloc.schools360.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.epyloc.schools360.model.Users;

@Repository("userRepository")
public interface UserRepository extends CrudRepository<Users, Long> {
	Users findByUsername(String username);

	Users findByConfirmationToken(String confirmationToken);

	@Query("SELECT coalesce(max(u.users_fl_id), 0) FROM Users u")
	Long getMaxId();

	@Query(value = "SELECT * FROM users_fl WHERE username LIKE :username", nativeQuery = true)
	public List<Users> searchWithNativeQuery(@Param("username") String username);
}