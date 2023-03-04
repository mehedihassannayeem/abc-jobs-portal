package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_contact_form")
public class UserContactForm {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int contact_form_query_id;
	private String querying_for;
	private String user_name;
	private String user_email;
	private String user_query;
	private String response_taken_by;
	private String response_taken_on;
	private String response_id;
	private String response;

	public int getContact_form_query_id() {
		return contact_form_query_id;
	}

	public void setContact_form_query_id(int contact_form_query_id) {
		this.contact_form_query_id = contact_form_query_id;
	}

	public String getQuerying_for() {
		return querying_for;
	}

	public void setQuerying_for(String querying_for) {
		this.querying_for = querying_for;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_query() {
		return user_query;
	}

	public void setUser_query(String user_query) {
		this.user_query = user_query;
	}

	public String getResponse_taken_by() {
		return response_taken_by;
	}

	public void setResponse_taken_by(String response_taken_by) {
		this.response_taken_by = response_taken_by;
	}

	public String getResponse_taken_on() {
		return response_taken_on;
	}

	public void setResponse_taken_on(String response_taken_on) {
		this.response_taken_on = response_taken_on;
	}

	public String getResponse_id() {
		return response_id;
	}

	public void setResponse_id(String response_id) {
		this.response_id = response_id;
	}

	public String getResponse() {
		return response;
	}

	public void setResponse(String response) {
		this.response = response;
	}

}
