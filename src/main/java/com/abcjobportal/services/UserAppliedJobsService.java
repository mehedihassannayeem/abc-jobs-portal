package com.abcjobportal.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserAppliedJobs;
import com.abcjobportal.repositories.UserAppliedJobsRepository;

@Service
public class UserAppliedJobsService {

	@Autowired
	private UserAppliedJobsRepository userAppliedJobsInterceptor;

	// user applying to a job
	public void applyJob(int id, int user_id) {
		UserAppliedJobs uaj = new UserAppliedJobs();
		uaj.setJob_id(id);
		uaj.setUser_id(user_id);

		this.userAppliedJobsInterceptor.save(uaj);

	}

	// user has applied to a job or not
	public UserAppliedJobs appliedJob(int id, int user_id) {
		return this.userAppliedJobsInterceptor.checkingAppliedJob(id, user_id);

	}

	// fetching users total applid jobs
	public int getAppliedJobs(int user_id) {
		return this.userAppliedJobsInterceptor.userAppliedJobs(user_id).size();
	}

}
