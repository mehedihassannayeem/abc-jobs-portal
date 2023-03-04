package com.abcjobportal.repositories;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserFoundJobs;

@Repository
public interface UserFoundJobsRepository extends JpaRepository<UserFoundJobs, Integer> {

	// fetching all records for logged user
	@Query("SELECT ufj FROM UserFoundJobs ufj WHERE ufj.user_id=:id")
	List<UserFoundJobs> getFoundJobsLogUser(@Param("id") int user_id);

	// fetching all records for not logged user
	@Query("SELECT ufj FROM UserFoundJobs ufj WHERE ufj.user_id=:id")
	List<UserFoundJobs> getFoundJobsUsers(@Param("id") int user_id);

	// deleting all records for logged user
	@Transactional
	@Modifying
	@Query("DELETE FROM UserFoundJobs ufj WHERE ufj.user_id=:id")
	public void deleteAllFoundJobsLogUser(@Param("id") int user_id);

	// deleting all records for not logged user
	@Transactional
	@Modifying
	@Query("DELETE FROM UserFoundJobs ufj WHERE ufj.user_id=:id")
	public void deleteAllFoundJobsUsers(@Param("id") int user_id);

}
