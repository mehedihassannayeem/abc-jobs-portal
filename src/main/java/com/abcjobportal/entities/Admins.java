package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_panel")
public class Admins {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int admin_id;
	private String admin_image;
	private String admin_position;
	private String admin_name;
	private String admin_email;
	private String admin_password;

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_image() {
		return admin_image;
	}

	public void setAdmin_image(String admin_image) {
		this.admin_image = admin_image;
	}

	public String getAdmin_position() {
		return admin_position;
	}

	public void setAdmin_position(String admin_position) {
		this.admin_position = admin_position;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_email() {
		return admin_email;
	}

	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}

	public String getAdmin_password() {
		return admin_password;
	}

	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}

}
