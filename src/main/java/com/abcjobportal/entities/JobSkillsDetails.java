package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_skills_details")
public class JobSkillsDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_skill_id;
	private String admin_name;
	private String skill_name;
	private String skill_icon;

	public int getJob_skill_id() {
		return job_skill_id;
	}

	public void setJob_skill_id(int job_skill_id) {
		this.job_skill_id = job_skill_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getSkill_name() {
		return skill_name;
	}

	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}

	public String getSkill_icon() {
		return skill_icon;
	}

	public void setSkill_icon(String skill_icon) {
		this.skill_icon = skill_icon;
	}

}
