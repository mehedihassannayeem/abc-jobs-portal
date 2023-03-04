package com.abcjobportal.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserNewsfeedPosts;
import com.abcjobportal.entities.UserProfile;
import com.abcjobportal.repositories.UserNewsfeedPostsRepository;

@Service
public class UserNewsfeedPostsService {

	@Autowired
	private UserNewsfeedPostsRepository userNewsfeedPostsRepository;

	// storing user new post
	public void newPost(UserNewsfeedPosts userNewsfeedPosts, UserProfile userProfile) {

		userNewsfeedPosts.setUser_id(userProfile.getUser_profile_id());
		userNewsfeedPosts.setUser_name(userProfile.getUp_userPersonalInfo().getFullname());
		userNewsfeedPosts.setUser_profile_link(userProfile.getProfile_link());

		if (userProfile.getProfile_image() == null) {
			userNewsfeedPosts.setUser_image("logo.png");
		} else {
			userNewsfeedPosts.setUser_image(userProfile.getProfile_image());
		}

		if (userProfile.getUp_userPersonalInfo().getJob_status() == null) {
			userNewsfeedPosts.setUser_job_status("No Data Available");
		} else {
			userNewsfeedPosts.setUser_job_status(userProfile.getUp_userPersonalInfo().getJob_status());
		}

		if (userProfile.getUp_userPersonalInfo().getEducation_status() == null) {
			userNewsfeedPosts.setUser_edu_status("No Data Available");
		} else {
			userNewsfeedPosts.setUser_edu_status(userProfile.getUp_userPersonalInfo().getEducation_status());
		}

		if (userProfile.getUp_userAddress().getCity() == null) {
			userNewsfeedPosts.setUser_city("No Data Available");

		} else {
			userNewsfeedPosts.setUser_city(userProfile.getUp_userAddress().getCity());
		}

		if (userProfile.getUp_userAddress().getCountry_name() == null) {
			userNewsfeedPosts.setUser_country("No Data Available");
		} else {
			userNewsfeedPosts.setUser_country(userProfile.getUp_userAddress().getCountry_name());
		}

		// setting the posted date and time
		LocalDateTime myDateObj = LocalDateTime.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		String formattedDate = myDateObj.format(myFormatObj);

		userNewsfeedPosts.setPosted_time(formattedDate);

		this.userNewsfeedPostsRepository.save(userNewsfeedPosts);

	}

	// getting all posts
	public List<UserNewsfeedPosts> getUsersPosts() {
		return this.userNewsfeedPostsRepository.findAll();
	}

	// user personal posts
	public List<UserNewsfeedPosts> getUserPosts(int id) {
		return this.userNewsfeedPostsRepository.getPersonalPosts(id);
	}

	// getting particular post
	public UserNewsfeedPosts getCommentPost(int id) {
		return this.userNewsfeedPostsRepository.findById(id).get();
	}
}
