package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_social_accounts")
public class UserSocialAccounts {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_social_accounts_id;
	private String facebook;
	private String twitter;
	private String youtube;
	private String instagram;
	private String linkedin;
	private String isCreated;

	public int getUser_social_accounts_id() {
		return user_social_accounts_id;
	}

	public void setUser_social_accounts_id(int user_social_accounts_id) {
		this.user_social_accounts_id = user_social_accounts_id;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public String getInstagram() {
		return instagram;
	}

	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public String getIsCreated() {
		return isCreated;
	}

	public void setIsCreated(String isCreated) {
		this.isCreated = isCreated;
	}

}
