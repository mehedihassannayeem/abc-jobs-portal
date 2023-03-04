package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_address")
public class UserAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_address_id;
	private String street;
	private String city;
	private String state;
	private String zip_code;
	private String country_name;
	private String isCreated;

	public int getUser_address_id() {
		return user_address_id;
	}

	public void setUser_address_id(int user_address_id) {
		this.user_address_id = user_address_id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getCountry_name() {
		return country_name;
	}

	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}

	public String getIsCreated() {
		return isCreated;
	}

	public void setIsCreated(String isCreated) {
		this.isCreated = isCreated;
	}

}
