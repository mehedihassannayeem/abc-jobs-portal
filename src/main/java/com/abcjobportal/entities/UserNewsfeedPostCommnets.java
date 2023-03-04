package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_newsfeed_post_comments")
public class UserNewsfeedPostCommnets {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_newsfeed_post_comments_serial;
	private int post_id;
	private int user_id;
	private String user_profile_link;
	private String user_name;
	private String user_image;
	private String user_commnet;
	private String commented_time;

	public int getUser_newsfeed_post_comments_serial() {
		return user_newsfeed_post_comments_serial;
	}

	public void setUser_newsfeed_post_comments_serial(int user_newsfeed_post_comments_serial) {
		this.user_newsfeed_post_comments_serial = user_newsfeed_post_comments_serial;
	}

	public int getPost_id() {
		return post_id;
	}

	public void setPost_id(int post_id) {
		this.post_id = post_id;
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

	public String getUser_commnet() {
		return user_commnet;
	}

	public void setUser_commnet(String user_commnet) {
		this.user_commnet = user_commnet;
	}

	public String getCommented_time() {
		return commented_time;
	}

	public void setCommented_time(String commented_time) {
		this.commented_time = commented_time;
	}

}