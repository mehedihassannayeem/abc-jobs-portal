package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_skills_background")
public class UserSkillsBackground {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int skills_background_serial_id;
	private int user_id;
	private String skill_title;
	private String sb_organization;
	private String date_of_skilled;
	private String isCreated;

	public int getSkills_background_serial_id() {
		return skills_background_serial_id;
	}

	public void setSkills_background_serial_id(int skills_background_serial_id) {
		this.skills_background_serial_id = skills_background_serial_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getSkill_title() {
		return skill_title;
	}

	public void setSkill_title(String skill_title) {
		this.skill_title = skill_title;
	}

	public String getSb_organization() {
		return sb_organization;
	}

	public void setSb_organization(String sb_organization) {
		this.sb_organization = sb_organization;
	}

	public String getDate_of_skilled() {
		return date_of_skilled;
	}

	public void setDate_of_skilled(String date_of_skilled) {
		this.date_of_skilled = date_of_skilled;
	}

	public String getIsCreated() {
		return isCreated;
	}

	public void setIsCreated(String isCreated) {
		this.isCreated = isCreated;
	}

}
