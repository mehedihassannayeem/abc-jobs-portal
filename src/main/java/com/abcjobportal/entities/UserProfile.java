package com.abcjobportal.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_profile")
public class UserProfile {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_profile_id;
	private String profile_link;
	private String profile_image;
	private String username;
	private String email;
	private String user_password;
	private String user_connected;

	@OneToOne(cascade = CascadeType.ALL)
	private UserPersonalInfo up_userPersonalInfo;
	@OneToOne(cascade = CascadeType.ALL)
	private UserAddress up_userAddress;
	@OneToOne(cascade = CascadeType.ALL)
	private UserSocialAccounts up_userSocialAccounts;
	@OneToOne(cascade = CascadeType.ALL)
	private UserProfessionalInfo up_userProfessionalInfo;
	@OneToOne(cascade = CascadeType.ALL)
	private UserWorkLinks up_useWorkLinks;

	public int getUser_profile_id() {
		return user_profile_id;
	}

	public void setUser_profile_id(int user_profile_id) {
		this.user_profile_id = user_profile_id;
	}

	public String getProfile_link() {
		return profile_link;
	}

	public void setProfile_link(String profile_link) {
		this.profile_link = profile_link;
	}

	public String getProfile_image() {
		return profile_image;
	}

	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public UserAddress getUp_userAddress() {
		return up_userAddress;
	}

	public void setUp_userAddress(UserAddress up_userAddress) {
		this.up_userAddress = up_userAddress;
	}

	public UserSocialAccounts getUp_userSocialAccounts() {
		return up_userSocialAccounts;
	}

	public void setUp_userSocialAccounts(UserSocialAccounts up_userSocialAccounts) {
		this.up_userSocialAccounts = up_userSocialAccounts;
	}

	public UserProfessionalInfo getUp_userProfessionalInfo() {
		return up_userProfessionalInfo;
	}

	public void setUp_userProfessionalInfo(UserProfessionalInfo up_userProfessionalInfo) {
		this.up_userProfessionalInfo = up_userProfessionalInfo;
	}

	public UserWorkLinks getUp_useWorkLinks() {
		return up_useWorkLinks;
	}

	public void setUp_useWorkLinks(UserWorkLinks up_useWorkLinks) {
		this.up_useWorkLinks = up_useWorkLinks;
	}

	public UserPersonalInfo getUp_userPersonalInfo() {
		return up_userPersonalInfo;
	}

	public void setUp_userPersonalInfo(UserPersonalInfo up_userPersonalInfo) {
		this.up_userPersonalInfo = up_userPersonalInfo;
	}

	public String getUser_connected() {
		return user_connected;
	}

	public void setUser_connected(String user_connected) {
		this.user_connected = user_connected;
	}

}
