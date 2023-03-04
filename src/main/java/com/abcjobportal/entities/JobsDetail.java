package com.abcjobportal.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "jobs_detail")
public class JobsDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_unique_id;
	private String admin_name;
	private String job_category;
	private String job_title;
	private String job_shift;
	private double salary;
	private double rating;
	private String publish_on;
	private int vacancy;
	private String employment_status;
	private String experience;
	private String gender;
	private String age_limit;
	private String application_deadline;
	private int company_info;
	private String posted_time;
	@OneToOne(cascade = CascadeType.ALL)
	private JobsDetailDescription job_description;

	@OneToOne(cascade = CascadeType.ALL)
	private JobCompany job_com;

	public int getJob_unique_id() {
		return job_unique_id;
	}

	public void setJob_unique_id(int job_unique_id) {
		this.job_unique_id = job_unique_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getJob_category() {
		return job_category;
	}

	public void setJob_category(String job_category) {
		this.job_category = job_category;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getJob_shift() {
		return job_shift;
	}

	public void setJob_shift(String job_shift) {
		this.job_shift = job_shift;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public String getPublish_on() {
		return publish_on;
	}

	public void setPublish_on(String publish_on) {
		this.publish_on = publish_on;
	}

	public int getVacancy() {
		return vacancy;
	}

	public void setVacancy(int vacancy) {
		this.vacancy = vacancy;
	}

	public String getEmployment_status() {
		return employment_status;
	}

	public void setEmployment_status(String employment_status) {
		this.employment_status = employment_status;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge_limit() {
		return age_limit;
	}

	public void setAge_limit(String age_limit) {
		this.age_limit = age_limit;
	}

	public String getApplication_deadline() {
		return application_deadline;
	}

	public void setApplication_deadline(String application_deadline) {
		this.application_deadline = application_deadline;
	}

	public int getCompany_info() {
		return company_info;
	}

	public void setCompany_info(int company_info) {
		this.company_info = company_info;
	}

	public String getPosted_time() {
		return posted_time;
	}

	public void setPosted_time(String posted_time) {
		this.posted_time = posted_time;
	}

	public JobsDetailDescription getJob_description() {
		return job_description;
	}

	public void setJob_description(JobsDetailDescription job_description) {
		this.job_description = job_description;
	}

	public JobCompany getJob_com() {
		return job_com;
	}

	public void setJob_com(JobCompany job_com) {
		this.job_com = job_com;
	}

}
