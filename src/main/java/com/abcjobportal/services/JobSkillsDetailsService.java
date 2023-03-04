package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.JobSkillsDetails;
import com.abcjobportal.repositories.JobSkillsDetailsRepository;

@Service
public class JobSkillsDetailsService {

	@Autowired
	private JobSkillsDetailsRepository jobSkillsDetailsRepository;

	// fetching all jobs by their skills
	public List<JobSkillsDetails> getAllSkills() {
		return this.jobSkillsDetailsRepository.findAll();
	}
}
