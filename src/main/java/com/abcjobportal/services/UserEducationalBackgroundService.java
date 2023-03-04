package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserEducationalBackground;
import com.abcjobportal.repositories.UserEducationalBackgroundRepository;

@Service
public class UserEducationalBackgroundService {

	@Autowired
	private UserEducationalBackgroundRepository userEducationalBackgroundRepository;

	// fetching user educational background infos
	public List<UserEducationalBackground> userEduBackground(int id) {
		return this.userEducationalBackgroundRepository.getUserEduBackground(id);
	}

}
