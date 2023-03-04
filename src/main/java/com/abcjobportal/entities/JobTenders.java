package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_tenders")
public class JobTenders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_tender_id;
	private String admin_name;
	private String tender_company_image;
	private String tender_company_name;
	private String tender_details;

	public int getJob_tender_id() {
		return job_tender_id;
	}

	public void setJob_tender_id(int job_tender_id) {
		this.job_tender_id = job_tender_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getTender_company_image() {
		return tender_company_image;
	}

	public void setTender_company_image(String tender_company_image) {
		this.tender_company_image = tender_company_image;
	}

	public String getTender_company_name() {
		return tender_company_name;
	}

	public void setTender_company_name(String tender_company_name) {
		this.tender_company_name = tender_company_name;
	}

	public String getTender_details() {
		return tender_details;
	}

	public void setTender_details(String tender_details) {
		this.tender_details = tender_details;
	}

}
