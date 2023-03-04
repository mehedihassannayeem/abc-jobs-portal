package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_personal_info")
public class UserPersonalInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_personal_info_id;
	private String fullname;
	private String phone;
	private String dob;
	private String age;
	private String gender;
	private String active_status;
	private String marital_status;
	private String job_status;
	private String education_status;
	private String national_identity;
	private String biography;

	public int getUser_personal_info_id() {
		return user_personal_info_id;
	}

	public void setUser_personal_info_id(int user_personal_info_id) {
		this.user_personal_info_id = user_personal_info_id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getActive_status() {
		return active_status;
	}

	public void setActive_status(String active_status) {
		this.active_status = active_status;
	}

	public String getMarital_status() {
		return marital_status;
	}

	public void setMarital_status(String marital_status) {
		this.marital_status = marital_status;
	}

	public String getJob_status() {
		return job_status;
	}

	public void setJob_status(String job_status) {
		this.job_status = job_status;
	}

	public String getEducation_status() {
		return education_status;
	}

	public void setEducation_status(String education_status) {
		this.education_status = education_status;
	}

	public String getNational_identity() {
		return national_identity;
	}

	public void setNational_identity(String national_identity) {
		this.national_identity = national_identity;
	}

	public String getBiography() {
		return biography;
	}

	public void setBiography(String biography) {
		this.biography = biography;
	}

}
