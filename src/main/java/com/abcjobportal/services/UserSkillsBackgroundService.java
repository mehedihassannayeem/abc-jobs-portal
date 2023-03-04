package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserSkillsBackground;
import com.abcjobportal.repositories.UserSkillsBackgroundRepository;

@Service
public class UserSkillsBackgroundService {

	@Autowired
	private UserSkillsBackgroundRepository userSkillsBackgroundRepository;

	// fetching user skill background infos
	public List<UserSkillsBackground> userSkillBackground(int id) {
		return this.userSkillsBackgroundRepository.getUserProBackground(id);
	}
}
