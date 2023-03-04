package com.abcjobportal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abcjobportal.entities.JobCategoryDetails;
import com.abcjobportal.entities.JobCompanyInfo;
import com.abcjobportal.entities.JobsDetail;
import com.abcjobportal.services.AdminsService;
import com.abcjobportal.services.JobCategoryDetailsService;
import com.abcjobportal.services.JobCompanyInfoService;
import com.abcjobportal.services.JobsDetailService;

@Controller
public class AdminControllerJobs {

	@Autowired
	private AdminsService adminsService;

	@Autowired
	private JobCategoryDetailsService jobCategoryDetailsService;

	@Autowired
	private JobCompanyInfoService jobCompanyInfoService;

	@Autowired
	private JobsDetailService jobsDetailService;

	// category creating url
	@RequestMapping(path = "/create-new-category", method = RequestMethod.POST)
	public String createCategory(@ModelAttribute() JobCategoryDetails jobCategoryDetails, Model model) {

		this.jobCategoryDetailsService.createJobCategory(jobCategoryDetails);

		model.addAttribute("category_msg", "Category created successfully !");
		model.addAttribute("categories", this.jobCategoryDetailsService.getAllJobsCategory());
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/createNewJobCategory";
	}

	// category fetching url
	@RequestMapping(path = "/edit-category/{id}")
	public String editCategory(@PathVariable("id") int id, Model model) {
		model.addAttribute("category", this.jobCategoryDetailsService.getCategory(id));
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/createNewJobCategoryEdit";
	}

	// category updating url
	@RequestMapping(path = "/edit-category/edit-created-category", method = RequestMethod.POST)
	public String editedCateory(@ModelAttribute() JobCategoryDetails jobCategoryDetails, Model model) {

		this.jobCategoryDetailsService.createJobCategory(jobCategoryDetails);

		model.addAttribute("category_msg", "Category information edited successfully !");
		model.addAttribute("categories", this.jobCategoryDetailsService.getAllJobsCategory());
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/createNewJobCategory";
	}

	// category deleting url
	@RequestMapping(path = "/delete-category/{id}")
	public String deleteCategory(@PathVariable("id") int id, Model model) {

		this.jobCategoryDetailsService.deleteCategory(id);

		model.addAttribute("category_msg", "Category deleted successfully !");
		model.addAttribute("categories", this.jobCategoryDetailsService.getAllJobsCategory());
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/createNewJobCategory";
	}

	//
	//
	//
	//
	// company registering url
	@RequestMapping(path = "/register-new-company", method = RequestMethod.POST)
	public String registerCompany(@ModelAttribute() JobCompanyInfo jobCompanyInfo, Model model) {

		this.jobCompanyInfoService.regCompany(jobCompanyInfo);

		model.addAttribute("company_msg", "Company registered successfully !");
		model.addAttribute("companies", this.jobCompanyInfoService.getAllCompany());
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/createCompanyInfo";
	}

	// company fetching url
	@RequestMapping(path = "/edit-company/{id}")
	public String editCompany(@PathVariable("id") int id, Model model) {
		model.addAttribute("company", this.jobCompanyInfoService.getCompany(id));
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/createCompanyInfoEdit";
	}

	// company updating url
	@RequestMapping(path = "/edit-company/updated-company", method = RequestMethod.POST)
	public String editedCompany(@ModelAttribute() JobCompanyInfo jobCompanyInfo, Model model) {

		this.jobCompanyInfoService.regCompany(jobCompanyInfo);

		model.addAttribute("company_msg", "Company information edited successfully !");
		model.addAttribute("companies", this.jobCompanyInfoService.getAllCompany());
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/createCompanyInfo";
	}

	// company deleting url
	@RequestMapping(path = "/delete-company/{id}")
	public String deleteCompany(@PathVariable("id") int id, Model model) {

		this.jobCompanyInfoService.deleteCompany(id);

		model.addAttribute("company_msg", "Company deleted successfully !");
		model.addAttribute("companies", this.jobCompanyInfoService.getAllCompany());
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/createCompanyInfo";
	}

	//
	//
	//
	//
	// job creating url
	@RequestMapping(path = "/create-new-job", method = RequestMethod.POST)
	public String createNewJob(@ModelAttribute() JobsDetail jobsDetail, Model model) {

		this.jobsDetailService.createJob(jobsDetail);

		model.addAttribute("job_msg", "Job created successfully !");
		model.addAttribute("jobs", this.jobsDetailService.getAllJobs());

		return "admin-section/jsp/allJobs";
	}

	// job fetching url
	@RequestMapping(path = "/edit-job/{id}")
	public String editJob(@PathVariable("id") int id, Model model) {
		model.addAttribute("job", this.jobsDetailService.getJob(id));
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		model.addAttribute("categories", this.jobCategoryDetailsService.getAllJobsCategory());
		model.addAttribute("companies", this.jobCompanyInfoService.getAllCompany());

		return "admin-section/jsp/createNewJobEdit";
	}

	// job updating url
	@RequestMapping(path = "/edit-job/job-info-update", method = RequestMethod.POST)
	public String editedJob(@ModelAttribute() JobsDetail jobsDetail, Model model) {

		this.jobsDetailService.createJob(jobsDetail);

		model.addAttribute("job_msg", "Job information edited successfully !");
		model.addAttribute("jobs", this.jobsDetailService.getAllJobs());

		return "admin-section/jsp/allJobs";
	}

	// job deleting url
	@RequestMapping(path = "/delete-job/{id}")
	public String deleteJob(@PathVariable("id") int id, Model model) {

		this.jobsDetailService.deleteJob(id);

		model.addAttribute("job_msg", "Job deleted successfully !");
		model.addAttribute("jobs", this.jobsDetailService.getAllJobs());

		return "admin-section/jsp/allJobs";
	}
}
