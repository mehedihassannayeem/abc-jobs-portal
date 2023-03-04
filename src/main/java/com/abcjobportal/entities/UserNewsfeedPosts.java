package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_newsfeed_posts")
public class UserNewsfeedPosts {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_newsfeed_posts_serial;
	private int user_id;
	private String user_profile_link;
	private String user_name;
	private String user_image;
	private String user_job_status;
	private String user_edu_status;
	private String user_city;
	private String user_country;
	private String post_title;
	private String post_description;
	private String posted_time;

	public int getUser_newsfeed_posts_serial() {
		return user_newsfeed_posts_serial;
	}

	public void setUser_newsfeed_posts_serial(int user_newsfeed_posts_serial) {
		this.user_newsfeed_posts_serial = user_newsfeed_posts_serial;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_profile_link() {
		return user_profile_link;
	}

	public void setUser_profile_link(String user_profile_link) {
		this.user_profile_link = user_profile_link;
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

	public String getUser_job_status() {
		return user_job_status;
	}

	public void setUser_job_status(String user_job_status) {
		this.user_job_status = user_job_status;
	}

	public String getUser_edu_status() {
		return user_edu_status;
	}

	public void setUser_edu_status(String user_edu_status) {
		this.user_edu_status = user_edu_status;
	}

	public String getUser_city() {
		return user_city;
	}

	public void setUser_city(String user_city) {
		this.user_city = user_city;
	}

	public String getUser_country() {
		return user_country;
	}

	public void setUser_country(String user_country) {
		this.user_country = user_country;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_description() {
		return post_description;
	}

	public void setPost_description(String post_description) {
		this.post_description = post_description;
	}

	public String getPosted_time() {
		return posted_time;
	}

	public void setPosted_time(String posted_time) {
		this.posted_time = posted_time;
	}

}
