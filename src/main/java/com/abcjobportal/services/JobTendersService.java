package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.JobTenders;
import com.abcjobportal.repositories.JobTendersRepositroy;

@Service
public class JobTendersService {

	@Autowired
	private JobTendersRepositroy jobTendersRepositroy;

	// fetching all tender jobs
	public List<JobTenders> getAllTenders() {
		return this.jobTendersRepositroy.findAll();
	}
}
