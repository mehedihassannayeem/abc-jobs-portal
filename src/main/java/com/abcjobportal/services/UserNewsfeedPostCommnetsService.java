package com.abcjobportal.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserNewsfeedPostCommnets;
import com.abcjobportal.entities.UserProfile;
import com.abcjobportal.repositories.UserNewsfeedPostCommnetsRepository;

@Service
public class UserNewsfeedPostCommnetsService {

	@Autowired
	private UserNewsfeedPostCommnetsRepository userNewsfeedPostCommnetsRepository;

	// storing new comment
	public void userComment(UserNewsfeedPostCommnets userNewsfeedPostCommnets, UserProfile userProfile) {

		// setting user information
		userNewsfeedPostCommnets.setUser_id(userProfile.getUser_profile_id());
		userNewsfeedPostCommnets.setUser_name(userProfile.getUp_userPersonalInfo().getFullname());
		userNewsfeedPostCommnets.setUser_image(userProfile.getProfile_image());
		userNewsfeedPostCommnets.setUser_profile_link(userProfile.getProfile_link());

		// setting the posted date and time
		LocalDateTime myDateObj = LocalDateTime.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		String formattedDate = myDateObj.format(myFormatObj);
		userNewsfeedPostCommnets.setCommented_time(formattedDate);

		this.userNewsfeedPostCommnetsRepository.save(userNewsfeedPostCommnets);

	}

	// fetching post comments
	public List<UserNewsfeedPostCommnets> postCommnets(int id) {
		return this.userNewsfeedPostCommnetsRepository.getPostCommnets(id);
	}
}
