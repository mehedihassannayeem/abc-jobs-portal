package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserAppliedJobs;

@Repository
public interface UserAppliedJobsRepository extends JpaRepository<UserAppliedJobs, Integer> {

	// fetching user and job info
	@Query("SELECT uaj FROM UserAppliedJobs uaj WHERE uaj.job_id=:jid AND uaj.user_id=:uid")
	public UserAppliedJobs checkingAppliedJob(@Param("jid") int id, @Param("uid") int user_id);

	// fetching user all applied jobs
	@Query("SELECT uaj FROM UserAppliedJobs uaj WHERE uaj.user_id=:uid")
	public List<UserAppliedJobs> userAppliedJobs(@Param("uid") int user_id);

}
