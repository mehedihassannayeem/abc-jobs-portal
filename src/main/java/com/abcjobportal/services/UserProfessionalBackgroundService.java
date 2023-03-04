package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserProfessionalBackground;
import com.abcjobportal.repositories.UserProfessionalBackgroundRepository;

@Service
public class UserProfessionalBackgroundService {

	@Autowired
	private UserProfessionalBackgroundRepository userProfessionalBackgroundRepository;

	// fetching user professional background infos
	public List<UserProfessionalBackground> userProBackground(int id) {
		return this.userProfessionalBackgroundRepository.getUserProBackground(id);
	}
}
