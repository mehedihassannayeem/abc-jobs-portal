package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.JobCompanyInfo;
import com.abcjobportal.repositories.JobCompanyInfoInterface;

@Service
public class JobCompanyInfoService {

	@Autowired
	private JobCompanyInfoInterface jobCompanyInfoInterface;

	// registering new company
	public void regCompany(JobCompanyInfo jobCompanyInfo) {
		this.jobCompanyInfoInterface.save(jobCompanyInfo);
	}

	// fetching all companies
	public List<JobCompanyInfo> getAllCompany() {
		return this.jobCompanyInfoInterface.findAll();
	}

	// fetching perticular company
	public JobCompanyInfo getCompany(int id) {
		return this.jobCompanyInfoInterface.findById(id).get();
	}

	// deleting company
	public void deleteCompany(int id) {
		this.jobCompanyInfoInterface.deleteById(id);
		;
	}
}
