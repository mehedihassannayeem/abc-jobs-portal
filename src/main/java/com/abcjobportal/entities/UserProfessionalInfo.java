package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_professional_info")
public class UserProfessionalInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_professional_info_id;
	private String work_experience;
	private String hourly_rate;
	private String english_proficiency;
	private String availability;
	private String isCreated;

	public int getUser_professional_info_id() {
		return user_professional_info_id;
	}

	public void setUser_professional_info_id(int user_professional_info_id) {
		this.user_professional_info_id = user_professional_info_id;
	}

	public String getWork_experience() {
		return work_experience;
	}

	public void setWork_experience(String work_experience) {
		this.work_experience = work_experience;
	}

	public String getHourly_rate() {
		return hourly_rate;
	}

	public void setHourly_rate(String hourly_rate) {
		this.hourly_rate = hourly_rate;
	}

	public String getEnglish_proficiency() {
		return english_proficiency;
	}

	public void setEnglish_proficiency(String english_proficiency) {
		this.english_proficiency = english_proficiency;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getIsCreated() {
		return isCreated;
	}

	public void setIsCreated(String isCreated) {
		this.isCreated = isCreated;
	}

}
