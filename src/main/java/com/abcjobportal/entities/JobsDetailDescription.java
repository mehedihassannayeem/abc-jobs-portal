package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "jobs_detail_description")
public class JobsDetailDescription {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_detail_unique_id;
	private String job_description;
	private String job_context;
	private String job_responsibilities;
	private String educational_requirement;
	private String experience_requirement;
	private String additional_requirement;
	private String benefits;
	private String job_location;
	private String job_source;
	private String work_place;
	private String apply_link;

	public int getJob_detail_unique_id() {
		return job_detail_unique_id;
	}

	public void setJob_detail_unique_id(int job_detail_unique_id) {
		this.job_detail_unique_id = job_detail_unique_id;
	}

	public String getJob_description() {
		return job_description;
	}

	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}

	public String getJob_context() {
		return job_context;
	}

	public void setJob_context(String job_context) {
		this.job_context = job_context;
	}

	public String getJob_responsibilities() {
		return job_responsibilities;
	}

	public void setJob_responsibilities(String job_responsibilities) {
		this.job_responsibilities = job_responsibilities;
	}

	public String getEducational_requirement() {
		return educational_requirement;
	}

	public void setEducational_requirement(String educational_requirement) {
		this.educational_requirement = educational_requirement;
	}

	public String getExperience_requirement() {
		return experience_requirement;
	}

	public void setExperience_requirement(String experience_requirement) {
		this.experience_requirement = experience_requirement;
	}

	public String getAdditional_requirement() {
		return additional_requirement;
	}

	public void setAdditional_requirement(String additional_requirement) {
		this.additional_requirement = additional_requirement;
	}

	public String getBenefits() {
		return benefits;
	}

	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}

	public String getJob_location() {
		return job_location;
	}

	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}

	public String getJob_source() {
		return job_source;
	}

	public void setJob_source(String job_source) {
		this.job_source = job_source;
	}

	public String getWork_place() {
		return work_place;
	}

	public void setWork_place(String work_place) {
		this.work_place = work_place;
	}

	public String getApply_link() {
		return apply_link;
	}

	public void setApply_link(String apply_link) {
		this.apply_link = apply_link;
	}

}
