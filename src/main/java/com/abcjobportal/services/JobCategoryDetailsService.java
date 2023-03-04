package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.JobCategoryDetails;
import com.abcjobportal.repositories.JobCategoryDetailsRepository;

@Service
public class JobCategoryDetailsService {

	@Autowired
	private JobCategoryDetailsRepository jobCategoryDetailsRepository;

	// creating job category
	public void createJobCategory(JobCategoryDetails jobCategoryDetails) {
		this.jobCategoryDetailsRepository.save(jobCategoryDetails);
	}

	// fetching all job category
	public List<JobCategoryDetails> getAllJobsCategory() {
		return this.jobCategoryDetailsRepository.findAll();
	}

	// fetching a particular job category
	public JobCategoryDetails getCategory(int id) {
		return this.jobCategoryDetailsRepository.findById(id).get();
	}

	// deleting job category
	public void deleteCategory(int id) {
		this.jobCategoryDetailsRepository.deleteById(id);
	}

}
