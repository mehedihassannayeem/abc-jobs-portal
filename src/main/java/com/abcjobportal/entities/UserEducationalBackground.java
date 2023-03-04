package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_educational_background")
public class UserEducationalBackground {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int educational_background_serial_id;
	private int user_id;
	private String education_level;
	private String degree;
	private String subject_group;
	private String concentration;
	private String institute;
	private String institute_image;
	private String grade;
	private String passing_year;
	private String isCreated;

	public int getEducational_background_serial_id() {
		return educational_background_serial_id;
	}

	public void setEducational_background_serial_id(int educational_background_serial_id) {
		this.educational_background_serial_id = educational_background_serial_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getEducation_level() {
		return education_level;
	}

	public void setEducation_level(String education_level) {
		this.education_level = education_level;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getSubject_group() {
		return subject_group;
	}

	public void setSubject_group(String subject_group) {
		this.subject_group = subject_group;
	}

	public String getConcentration() {
		return concentration;
	}

	public void setConcentration(String concentration) {
		this.concentration = concentration;
	}

	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getInstitute_image() {
		return institute_image;
	}

	public void setInstitute_image(String institute_image) {
		this.institute_image = institute_image;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPassing_year() {
		return passing_year;
	}

	public void setPassing_year(String passing_year) {
		this.passing_year = passing_year;
	}

	public String getIsCreated() {
		return isCreated;
	}

	public void setIsCreated(String isCreated) {
		this.isCreated = isCreated;
	}

}
