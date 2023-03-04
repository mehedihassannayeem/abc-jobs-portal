package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_company")
public class JobCompany {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int com_id;
	private String com_name;
	private String com_address;
	private String com_website;

	public int getCom_id() {
		return com_id;
	}

	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}

	public String getCom_address() {
		return com_address;
	}

	public void setCom_address(String com_address) {
		this.com_address = com_address;
	}

	public String getCom_website() {
		return com_website;
	}

	public void setCom_website(String com_website) {
		this.com_website = com_website;
	}

	public JobCompany(String com_name, String com_address, String com_website) {
		super();
		this.com_name = com_name;
		this.com_address = com_address;
		this.com_website = com_website;
	}

	public JobCompany() {
		super();

	}

}
