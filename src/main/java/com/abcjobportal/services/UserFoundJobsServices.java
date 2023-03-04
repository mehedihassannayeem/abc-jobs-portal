package com.abcjobportal.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserFoundJobs;
import com.abcjobportal.entities.UserProfile;
import com.abcjobportal.repositories.UserFoundJobsRepository;

@Service
public class UserFoundJobsServices {

	@Autowired
	private UserFoundJobsRepository userFoundJobsRepository;

	@Autowired
	private HttpServletRequest request;

	// creating found jobs
	public void storeFoundJob(UserFoundJobs userFoundJobs) {

		HttpSession session = request.getSession();
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (session.getAttribute("loggedUserProfile") != null) {
			userFoundJobs.setUser_id(logUserProfile.getUser_profile_id());
		}

		this.userFoundJobsRepository.save(userFoundJobs);
	}

	// fetching all found jobs for logged user
	public List<UserFoundJobs> getAllFoundJobsLoggedUser(int user_id) {
		return this.userFoundJobsRepository.getFoundJobsLogUser(user_id);
	}

	// fetching all found jobs for not logged user
	public List<UserFoundJobs> getAllFoundJobs() {
		int id = 0;
		return this.userFoundJobsRepository.getFoundJobsUsers(id);
	}

	// deleting particular found job
	public void deleteFoundJob(int id) {
		this.userFoundJobsRepository.deleteById(id);
	}

	// deleteing all the found jobs for logged user
	public void clearFoundJobsLog(int id) {
		this.userFoundJobsRepository.deleteAllFoundJobsLogUser(id);

	}

	// deleteing all the found jobs for not logged user
	public void clearFoundJobs() {
		int id = 0;
		this.userFoundJobsRepository.deleteAllFoundJobsUsers(id);

	}
}
