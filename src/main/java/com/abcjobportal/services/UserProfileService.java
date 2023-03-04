package com.abcjobportal.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserProfile;
import com.abcjobportal.repositories.UserProfileRepository;

@Service
public class UserProfileService {

	@Autowired
	private UserProfileRepository uRepository;

	@Autowired
	private HttpServletRequest request;

	// register new user
	public void regNewUser(UserProfile uProfile) {
		this.uRepository.save(uProfile);
	}

	// login data getting
	public UserProfile getLoginUserProfile(String given_userInfo, String given_pass) {
		UserProfile userHomepage = this.uRepository.getUserHomepage(given_userInfo, given_pass);
		return userHomepage;
	}

	// dashboard data getting
	public UserProfile getProfileData(int id) {
		UserProfile userProfile = this.uRepository.findById(id).get();

		return userProfile;
	}

	// getting profile for resetting the password
	public UserProfile getResPassUser(String userEmail) {
		return this.uRepository.resetPass(userEmail);

	}

	// changing the password
	public void changePass(String userPass, String userEmail) {
		this.uRepository.resetPassword(userPass, userEmail);
	}

	// getting public profile
	public UserProfile getPublicProfile(String url) {
		return this.uRepository.getPubProfile(url);
	}

	// getting searched matched profile
	public List<UserProfile> matchedProfile(String findUser) {
		return this.uRepository.getUserSearched(findUser);
	}

	// setting the user profile image
	public void uploadImage(String img, int id) {
		this.uRepository.updateProfileImage(img, id);
	}

	// updating user personal information
	public void updateInfo(UserProfile userProfile) {
		int user_profile_id = userProfile.getUser_profile_id();
		String nationalIdentity = "";

		// checking user national identity
		if (userProfile.getUp_userPersonalInfo().getNational_identity().isBlank()
				|| userProfile.getUp_userPersonalInfo().getNational_identity().isEmpty()) {
			nationalIdentity = user_profile_id + "";
		} else {
			nationalIdentity = userProfile.getUp_userPersonalInfo().getNational_identity();
		}

		// updating user profile info
		this.uRepository.updateProfilePersonalInfo(userProfile.getUp_userPersonalInfo().getFullname(),
				userProfile.getUp_userPersonalInfo().getGender(),
				userProfile.getUp_userPersonalInfo().getMarital_status(),
				userProfile.getUp_userPersonalInfo().getPhone(), userProfile.getUp_userPersonalInfo().getDob(),
				nationalIdentity, userProfile.getUp_userPersonalInfo().getEducation_status(),
				userProfile.getUp_userPersonalInfo().getJob_status(),
				userProfile.getUp_userPersonalInfo().getBiography(), user_profile_id);

		this.uRepository.updateProfileAddress(userProfile.getUp_userAddress().getStreet(),
				userProfile.getUp_userAddress().getCity(), userProfile.getUp_userAddress().getState(),
				userProfile.getUp_userAddress().getZip_code(), userProfile.getUp_userAddress().getCountry_name(),
				user_profile_id);
	}

	// user password retrive method
	public String passwordRevert(String email) {
		return this.uRepository.getProfileForRevertPassword(email);
	}

	// user password changing method
	public String profilePasswordChange(String userOldPassword, String userNewPassword, String userNewPassCon) {

		HttpSession session = request.getSession();
		String msg = "error";

		if (userNewPassword.equals(userNewPassCon)) {

			UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

			if (logUserProfile.getUser_password().equals(userOldPassword)) {

				this.uRepository.resetPassword(userNewPassCon, logUserProfile.getEmail());
				msg = "changed";

			} else {
				msg = "notMatched";
			}
		}

		return msg;

	}

}
