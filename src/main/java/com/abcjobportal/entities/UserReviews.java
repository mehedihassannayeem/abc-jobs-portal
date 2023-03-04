package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_reviews")
public class UserReviews {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_reviews_serial;
	private int user_id;
	private String user_name;
	private String user_image;
	private String user_review;
	private int user_review_display = 0;
	private int display_section = 0;

	public int getUser_reviews_serial() {
		return user_reviews_serial;
	}

	public void setUser_reviews_serial(int user_reviews_serial) {
		this.user_reviews_serial = user_reviews_serial;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_image() {
		return user_image;
	}

	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}

	public String getUser_review() {
		return user_review;
	}

	public void setUser_review(String user_review) {
		this.user_review = user_review;
	}

	public int getUser_review_display() {
		return user_review_display;
	}

	public void setUser_review_display(int user_review_display) {
		this.user_review_display = user_review_display;
	}

	public int getDisplay_section() {
		return display_section;
	}

	public void setDisplay_section(int display_section) {
		this.display_section = display_section;
	}

}
