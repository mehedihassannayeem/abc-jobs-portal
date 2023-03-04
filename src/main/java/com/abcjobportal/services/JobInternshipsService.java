package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.JobInternships;
import com.abcjobportal.repositories.JobInternshipsRepository;

@Service
public class JobInternshipsService {

	@Autowired
	private JobInternshipsRepository jobInternshipsRepository;

	// fetching all interships jobs
	public List<JobInternships> getAllInternJobs() {
		return this.jobInternshipsRepository.findAll();
	}
}
