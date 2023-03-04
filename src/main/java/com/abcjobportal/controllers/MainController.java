package com.abcjobportal.controllers;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abcjobportal.entities.JobsDetail;
import com.abcjobportal.entities.UserFoundJobs;
import com.abcjobportal.entities.UserProfile;
import com.abcjobportal.services.CareerDevCourseService;
import com.abcjobportal.services.ElearningCourseMaterialsService;
import com.abcjobportal.services.JobCategoryDetailsService;
import com.abcjobportal.services.JobInternshipsService;
import com.abcjobportal.services.JobSkillsDetailsService;
import com.abcjobportal.services.JobTendersService;
import com.abcjobportal.services.JobsDetailService;
import com.abcjobportal.services.UserAppliedJobsService;
import com.abcjobportal.services.UserFoundJobsServices;
import com.abcjobportal.services.UserReviewsService;

@Controller
public class MainController {

	@Autowired
	private UserFoundJobsServices userFoundJobsServices;

	@Autowired
	private JobsDetailService jobsDetailService;

	@Autowired
	private JobCategoryDetailsService jobCategoryDetailsService;

	@Autowired
	private JobSkillsDetailsService jobSkillsDetailsService;

	@Autowired
	private JobTendersService jobTendersService;

	@Autowired
	private JobInternshipsService jobInternshipsService;

	@Autowired
	private ElearningCourseMaterialsService elearningCourseMaterialsService;

	@Autowired
	private CareerDevCourseService careerDevCourseService;

	@Autowired
	private UserReviewsService userReviewsService;

	@Autowired
	private UserAppliedJobsService userAppliedJobsService;

	@ModelAttribute
	public void allCommonModel(Model model) {

		// jobs feed
		model.addAttribute("newJobSl", this.jobsDetailService.getJobsCount());
		model.addAttribute("allJobs", this.jobsDetailService.getAllJobs());
		model.addAttribute("msgNoti", this.jobsDetailService.getJobsCount());
		model.addAttribute("conNoti", this.jobsDetailService.getJobsCount());

		// search by category
		model.addAttribute("categories", this.jobCategoryDetailsService.getAllJobsCategory());

		// search by skills
		model.addAttribute("jobSkills", this.jobSkillsDetailsService.getAllSkills());

		// tender jobs
		model.addAttribute("jobTenders", this.jobTendersService.getAllTenders());

		// internship jobs
		model.addAttribute("jobInterns", this.jobInternshipsService.getAllInternJobs());

		// elearning section
		model.addAttribute("elearningCourses", this.elearningCourseMaterialsService.elearningAllCourses());

		// career development section
		model.addAttribute("careerDevCourses", this.careerDevCourseService.getAllCareerDevCourses());

		// client review section
		model.addAttribute("userReviews", this.userReviewsService.getDisplayAbleAllReviews());

	}

	// landing page
	@RequestMapping("/")
	public String landingPage(Model model) {
		System.out.println("\r\r\r---------------------INDEX--------------------------\r\r\r");
		model.addAttribute("jobDetails", this.jobsDetailService.getJob(1));
		model.addAttribute("searchedJobs", this.userFoundJobsServices.getAllFoundJobs());

		// hero section
		model.addAttribute("liveJobs", "5778");
		model.addAttribute("vacancies", "223487");
		model.addAttribute("jobSeekers", "54234");
		model.addAttribute("companies", "12483");
		model.addAttribute("newJobs", "356");
		model.addAttribute("remoteJobs", "1000");

		return "index";
	}

	//
	//
	//
	//
	// found jobs creating url
	@RequestMapping(path = "/found-jobs", method = RequestMethod.POST)
	public String storeSearchedJob(@ModelAttribute() UserFoundJobs userFoundJobs, Model model, HttpSession session) {

		this.userFoundJobsServices.storeFoundJob(userFoundJobs);

		model.addAttribute("foundJobs",
				this.jobsDetailService.getQueriedJobs(userFoundJobs.getJob_what(), userFoundJobs.getJob_where()));

		if (session.getAttribute("loggedUserProfile") != null) {
			return "found-jobs-log";
		}

		return "found-jobs";
	}

	// found jobs deleting url
	@RequestMapping(path = "/delete-searched-job/{id}")
	public String deleteSearchedJob(@PathVariable("id") int id) {

		this.userFoundJobsServices.deleteFoundJob(id);

		return "redirect:/";
	}

	// found jobs deleting url for logged user
	@RequestMapping(path = "/delete-all-searched-job-log/{id}")
	public String deleteAllSearchedJobLog(@PathVariable("id") int id) {

		this.userFoundJobsServices.clearFoundJobsLog(id);

		return "redirect:/";
	}

	// found jobs deleting url for not logged user
	@RequestMapping(path = "/delete-all-searched-job-not-log")
	public String deleteAllSearchedJobNotLog() {

		this.userFoundJobsServices.clearFoundJobs();

		return "redirect:/";
	}

	//
	//
	//
	//
	// job detials fetching url
	@RequestMapping(path = "/get-job-detail/{id}")
	public String getJobDetails(@PathVariable("id") int id, Model model) {

		model.addAttribute("jobDetails", this.jobsDetailService.getJob(id));
		model.addAttribute("searchedJobs", this.userFoundJobsServices.getAllFoundJobs());

		return "index";
	}

	//
	//
	//
	//
	// job applying url
	@RequestMapping("/apply-job-link/{id}")
	public String jobApplyLink(@PathVariable("id") int id, HttpSession session, HttpServletResponse response,
			Model model) {

		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		try {
			if (logUserProfile == null) {
				response.sendRedirect(session.getServletContext().getContextPath() + "/login");
			} else {
				model.addAttribute("appliedUserName", logUserProfile.getUp_userPersonalInfo().getFullname());

				// checking job is applied or not
				if (this.userAppliedJobsService.appliedJob(id, logUserProfile.getUser_profile_id()) != null) {
				} else {
					// applying for the job
					this.userAppliedJobsService.applyJob(id, logUserProfile.getUser_profile_id());

					// fetching applied job info
					JobsDetail job = this.jobsDetailService.getJob(id);
					model.addAttribute("appliedUserJob", job.getJob_title());
					model.addAttribute("appliedUserCom", job.getJob_com().getCom_name());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "applied-job";
	}

	//
	//
	//
	//
	// search by category url
	@RequestMapping(path = "/get-all-matched-category-jobs/{category}")
	public String searchByCategory(@PathVariable("category") String category, Model model, HttpSession session) {

		model.addAttribute("catJobs", this.jobsDetailService.getCatJobs(category));

		if (session.getAttribute("loggedUserProfile") != null) {
			return "found-jobs-log";
		}

		return "found-jobs";
	}

	//
	//
	//
	//
	// search by skills url
	@RequestMapping(path = "/get-all-matched-skill-jobs/{id}")
	@ResponseBody
	public String searchBySkills(@PathVariable("id") int id) {
		return "<h1> Searching by skills functionality is coming soon !!! <br><br>" + " You have searched to the " + id
				+ " skill id. </h1>";
	}

	//
	//
	//
	//
	// get tender job url
	@RequestMapping(path = "/get-tender-job/{id}")
	@ResponseBody
	public String getTenderJob(@PathVariable("id") int id) {

		return "<h1> Searching tender jobs functionality is coming soon !!! <br><br>" + " You have searched to the "
				+ id + " tender id. </h1>";
	}

	//
	//
	//
	//
	// get internship job url
	@RequestMapping(path = "/get-intern-job/{id}")
	@ResponseBody
	public String getInternJob(@PathVariable("id") int id) {

		return "<h1> Searching internship job functionality is coming soon !!! <br><br>" + " You have searched to the "
				+ id + " internship id. </h1>";
	}

	//
	//
	//
	//
	// get elearning course url
	@RequestMapping(path = "/get-ecourse/{id}")
	@ResponseBody
	public String getElearningCourse(@PathVariable("id") int id) {

		return "<h1> Getting course functionality is coming soon !!! <br><br>" + " You clicked on the " + id
				+ " elearning course id. </h1>";
	}

	//
	//
	//
	//
	// get day shift course url
	@RequestMapping(path = "/get-day-shift-course-details/{id}")
	@ResponseBody
	public String getDayShiftCourse(@PathVariable("id") int id) {

		return "<h1> Getting course functionality is coming soon !!! <br><br>" + " You clicked on the " + id
				+ " day shift course id. </h1>";
	}

	//
	//
	//
	//
	// get night shift course url
	@RequestMapping(path = "/get-night-shift-course-details/{id}")
	@ResponseBody
	public String getNightShiftCourse(@PathVariable("id") int id) {

		return "<h1> Getting course functionality is coming soon !!! <br><br>" + " You clicked on the " + id
				+ " night shift course id. </h1>";
	}

	//
	//
	//
	//
	// developer designer
	@RequestMapping(path = "/developer-designer")
	public String developer(Model model) {
		return "developer";
	}

	//
	//
	//
	//
	// sitemap
	@RequestMapping(path = "/sitemap")
	public String sitemap(Model model) {
		return "sitemap";
	}

}
