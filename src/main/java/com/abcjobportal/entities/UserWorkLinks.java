package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_work_links")
public class UserWorkLinks {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_work_links_id;
	private String website;
	private String github;
	private String stack_overflow;
	private String blog;
	private String isCreated;

	public int getUser_work_links_id() {
		return user_work_links_id;
	}

	public void setUser_work_links_id(int user_work_links_id) {
		this.user_work_links_id = user_work_links_id;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}

	public String getStack_overflow() {
		return stack_overflow;
	}

	public void setStack_overflow(String stack_overflow) {
		this.stack_overflow = stack_overflow;
	}

	public String getBlog() {
		return blog;
	}

	public void setBlog(String blog) {
		this.blog = blog;
	}

	public String getIsCreated() {
		return isCreated;
	}

	public void setIsCreated(String isCreated) {
		this.isCreated = isCreated;
	}

}
