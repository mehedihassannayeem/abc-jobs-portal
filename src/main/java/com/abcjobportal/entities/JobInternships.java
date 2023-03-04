package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_internships")
public class JobInternships {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_intern_id;
	private String admin_name;
	private String intern_title;
	private String intern_company_name;
	private String intern_company_image;

	public int getJob_intern_id() {
		return job_intern_id;
	}

	public void setJob_intern_id(int job_intern_id) {
		this.job_intern_id = job_intern_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getIntern_title() {
		return intern_title;
	}

	public void setIntern_title(String intern_title) {
		this.intern_title = intern_title;
	}

	public String getIntern_company_name() {
		return intern_company_name;
	}

	public void setIntern_company_name(String intern_company_name) {
		this.intern_company_name = intern_company_name;
	}

	public String getIntern_company_image() {
		return intern_company_image;
	}

	public void setIntern_company_image(String intern_company_image) {
		this.intern_company_image = intern_company_image;
	}

}
