package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_find_jobs")
public class UserFoundJobs {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int find_jobs_serial_id;
	private int user_id;
	private String job_what;
	private String job_where;

	public int getFind_jobs_serial_id() {
		return find_jobs_serial_id;
	}

	public void setFind_jobs_serial_id(int find_jobs_serial_id) {
		this.find_jobs_serial_id = find_jobs_serial_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getJob_what() {
		return job_what;
	}

	public void setJob_what(String job_what) {
		this.job_what = job_what;
	}

	public String getJob_where() {
		return job_where;
	}

	public void setJob_where(String job_where) {
		this.job_where = job_where;
	}

}
