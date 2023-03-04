package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_category_details")
public class JobCategoryDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_cat_id;
	private String admin_name;
	private String category_name;
	private String category_icon;

	public int getJob_cat_id() {
		return job_cat_id;
	}

	public void setJob_cat_id(int job_cat_id) {
		this.job_cat_id = job_cat_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getCategory_icon() {
		return category_icon;
	}

	public void setCategory_icon(String category_icon) {
		this.category_icon = category_icon;
	}

}
