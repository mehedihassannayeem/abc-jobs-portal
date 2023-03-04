package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_professional_background")
public class UserProfessionalBackground {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int professional_background_serial_id;
	private int user_id;
	private String company_image;
	private String company_name;
	private String designation;
	private String department;
	private String employment_period_from;
	private String employment_period_till;
	private String employment_period;
	private String company_location;
	private String isCreated;

	public int getProfessional_background_serial_id() {
		return professional_background_serial_id;
	}

	public void setProfessional_background_serial_id(int professional_background_serial_id) {
		this.professional_background_serial_id = professional_background_serial_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getCompany_image() {
		return company_image;
	}

	public void setCompany_image(String company_image) {
		this.company_image = company_image;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEmployment_period_from() {
		return employment_period_from;
	}

	public void setEmployment_period_from(String employment_period_from) {
		this.employment_period_from = employment_period_from;
	}

	public String getEmployment_period_till() {
		return employment_period_till;
	}

	public void setEmployment_period_till(String employment_period_till) {
		this.employment_period_till = employment_period_till;
	}

	public String getEmployment_period() {
		return employment_period;
	}

	public void setEmployment_period(String employment_period) {
		this.employment_period = employment_period;
	}

	public String getCompany_location() {
		return company_location;
	}

	public void setCompany_location(String company_location) {
		this.company_location = company_location;
	}

	public String getIsCreated() {
		return isCreated;
	}

	public void setIsCreated(String isCreated) {
		this.isCreated = isCreated;
	}

}
