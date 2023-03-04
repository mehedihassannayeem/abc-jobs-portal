package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_applied_jobs")
public class UserAppliedJobs {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_applied_jobs_serial;
	private int user_id;
	private int job_id;

	public int getUser_applied_jobs_serial() {
		return user_applied_jobs_serial;
	}

	public void setUser_applied_jobs_serial(int user_applied_jobs_serial) {
		this.user_applied_jobs_serial = user_applied_jobs_serial;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}

}
