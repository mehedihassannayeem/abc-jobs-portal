package com.abcjobportal.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.JobCompany;
import com.abcjobportal.entities.JobCompanyInfo;
import com.abcjobportal.entities.JobsDetail;
import com.abcjobportal.repositories.JobsDetailRepository;

@Service
public class JobsDetailService {

	@Autowired
	private JobsDetailRepository jobsDetailRepository;

	@Autowired
	private JobCompanyInfoService jobCompanyInfoService;

	// creating a job
	public void createJob(JobsDetail jobsDetail) {
		// setting the posted date and time
		LocalDateTime myDateObj = LocalDateTime.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		String formattedDate = myDateObj.format(myFormatObj);
		jobsDetail.setPosted_time(formattedDate);

		JobCompanyInfo company = this.jobCompanyInfoService.getCompany(jobsDetail.getCompany_info());
		JobCompany jc = new JobCompany(company.getCompany_name(), company.getCompany_address(),
				company.getCompany_website());
		jobsDetail.setJob_com(jc);

		this.jobsDetailRepository.save(jobsDetail);
	}

	// fetching queried jobs
	public List<JobsDetail> getQueriedJobs(String what, String where) {
		return this.jobsDetailRepository.getMatchedJobs(what, where);
	}

	// fetching category wise jobs
	public List<JobsDetail> getCatJobs(String cat) {
		return this.jobsDetailRepository.getCategoryJobs(cat);
	}

	// fetching all jobs
	public List<JobsDetail> getAllJobs() {
		return this.jobsDetailRepository.findAll();
	}

	// fetching a particular job
	public JobsDetail getJob(int id) {

		return this.jobsDetailRepository.findById(id).get();
	}

	// deleting a job
	public void deleteJob(int id) {
		this.jobsDetailRepository.deleteById(id);
	}

	// getting the jobs count
	public int getJobsCount() {
		return (int) this.jobsDetailRepository.count();
	}

}
