package com.abcjobportal.controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.abcjobportal.entities.Admins;
import com.abcjobportal.services.AdminsService;
import com.abcjobportal.services.BulkEmailsService;
import com.abcjobportal.services.CareerDevCourseService;
import com.abcjobportal.services.CourseShiftInfoService;
import com.abcjobportal.services.ElearningCourseMaterialsService;
import com.abcjobportal.services.JobCategoryDetailsService;
import com.abcjobportal.services.JobCompanyInfoService;
import com.abcjobportal.services.JobsDetailService;
import com.abcjobportal.services.UserContactFormService;
import com.abcjobportal.services.UserReviewsService;

@Controller
public class AdminController {
	@Autowired
	private AdminsService adminsService;

	@Autowired
	private BulkEmailsService bulkEmailsService;

	@Autowired
	private JobCategoryDetailsService jobCategoryDetailsService;

	@Autowired
	private JobCompanyInfoService jobCompanyInfoService;

	@Autowired
	private JobsDetailService jobsDetailService;

	@Autowired
	private ElearningCourseMaterialsService elearningCourseMaterialsService;

	@Autowired
	private CourseShiftInfoService courseShiftInfoService;

	@Autowired
	private CareerDevCourseService careerDevCourseService;

	@Autowired
	private UserContactFormService userContactFormService;

	@Autowired
	private UserReviewsService userReviewsService;

	//
	//
	// admin login, logout, dashboard section
	//
	//
	@RequestMapping("/admin")
	public String adminIndex() {

		return "admin-section/index";
	}

	@RequestMapping("/admin-logout")
	public String adminLogout(HttpServletRequest rServletRequest) {
		rServletRequest.getSession().invalidate();
		return "admin-section/index";
	}

	@RequestMapping("/admin-homepage")
	public String adminHomepage(@ModelAttribute() Admins admins, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {

		RequestDispatcher rDispatcher = null;

		// fetching data from admin panel to login
		if (session.getAttribute("loggedAdmin") == null) {
			Admins logAdmin = this.adminsService.getLogAdmin(admins.getAdmin_email(), admins.getAdmin_password());

			try {
				if (logAdmin == null) {
					request.setAttribute("status", "logError");
					rDispatcher = request.getRequestDispatcher("admin");
					rDispatcher.forward(request, response);
				} else {
					session.setAttribute("loggedAdmin", logAdmin);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		model.addAttribute("contactForms", this.userContactFormService.getAllContactForms());
		model.addAttribute("userReviews", this.userReviewsService.getAllReviews());

		return "admin-section/jsp/adminHomepage";
	}

	@RequestMapping("/master-dashboard")
	public String adminDashboard(@ModelAttribute() Admins admins, Model model, HttpServletRequest request,
			HttpServletResponse response) {

		RequestDispatcher rDispatcher = null;

		Admins logAdmin = this.adminsService.getLogAdmin(admins.getAdmin_email(), admins.getAdmin_password());

		try {

			if (logAdmin == null) {
				request.setAttribute("status", "invalidMasterLogin");
				rDispatcher = request.getRequestDispatcher("admin-dashboard");
				rDispatcher.forward(request, response);
			} else if (logAdmin.getAdmin_email().endsWith("@abcjobsportal-master-admin.com")) {

			} else {
				request.setAttribute("status", "invalidMasterLogin");
				rDispatcher = request.getRequestDispatcher("admin-dashboard");
				rDispatcher.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/adminDashboard";

	}

	@RequestMapping("/admin-dashboard")
	public String adminDashboardView(Model model) {

		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/adminDashboardView";
	}

	//
	//
	// jobs section
	//
	//

	@RequestMapping("/all-jobs")
	public String adminAllJobs(Model model) {

		model.addAttribute("jobs", this.jobsDetailService.getAllJobs());

		return "admin-section/jsp/allJobs";
	}

	@RequestMapping("/create-job")
	public String adminCreateJob(Model model) {

		model.addAttribute("admins", this.adminsService.getAllAdmins());
		model.addAttribute("categories", this.jobCategoryDetailsService.getAllJobsCategory());
		model.addAttribute("companies", this.jobCompanyInfoService.getAllCompany());

		return "admin-section/jsp/createNewJob";
	}

	@RequestMapping("/create-new-category")
	public String adminCreateNewJobCategory(Model model) {

		model.addAttribute("admins", this.adminsService.getAllAdmins());
		model.addAttribute("categories", this.jobCategoryDetailsService.getAllJobsCategory());

		return "admin-section/jsp/createNewJobCategory";
	}

	@RequestMapping("/register-company")
	public String adminCreateCompany(Model model) {

		model.addAttribute("companies", this.jobCompanyInfoService.getAllCompany());
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/createCompanyInfo";
	}

	//
	//
	// bulk emails section
	//
	//

	@RequestMapping("/all-emails")
	public String adminallEmails(Model model) {

		model.addAttribute("allEmails", this.bulkEmailsService.getAllEmails());

		return "admin-section/jsp/allSentEmails";
	}

	@RequestMapping("/sent-email")
	public String adminSentEmails(Model model) {

		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/sentNewEmail";
	}

	//
	//
	// e learning course section
	//
	//
	@RequestMapping("/elearning-courses")
	public String adminElearningCourses(Model model) {

		model.addAttribute("elearnCourses", this.elearningCourseMaterialsService.elearningAllCourses());

		return "admin-section/jsp/eLearningAllCourse";
	}

	@RequestMapping("/elearning-create-course")
	public String adminElearningCreateCourse(Model model) {

		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/eLearningCreateCourse";
	}

	//
	//
	// career development course section
	//
	//
	@RequestMapping("/career-dev-courses")
	public String adminCareerDevCourses(Model model) {
		model.addAttribute("careerDevCourses", this.careerDevCourseService.getAllCareerDevCourses());
		return "admin-section/jsp/careerDevAllCourse";
	}

	@RequestMapping("/career-dev-create-course")
	public String adminCareerDevCreateCourse(Model model) {

		model.addAttribute("admins", this.adminsService.getAllAdmins());
		model.addAttribute("shifts", this.courseShiftInfoService.getAllCareerDevCourseShifts());

		return "admin-section/jsp/careerDevCreateCourse";
	}

	@RequestMapping("/career-dev-create-course-shift")
	public String adminCareerDevCreateCourseShift(Model model) {
		model.addAttribute("devShifts", this.courseShiftInfoService.getAllCareerDevCourseShifts());
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/careerDevCourseShift";
	}

	//
	//
	// user review, contact form section
	//
	//

	@RequestMapping("/user-contact-form")
	public String adminUserContactForm(Model model) {

		model.addAttribute("contactForms", this.userContactFormService.getAllContactForms());

		return "admin-section/jsp/userContactForm";
	}

	@RequestMapping("/user-reviews")
	public String adminUserReviews(Model model) {

		model.addAttribute("userReviews", this.userReviewsService.getAllReviews());

		return "admin-section/jsp/userReviews";
	}

	// user review displaying url
	@RequestMapping(path = "/user-review-show/{id}")
	public String showUserReview(@PathVariable("id") int id, Model model) {

		this.userReviewsService.displayUserReview(id);

		model.addAttribute("user_rev_msg", "User Review is displaying successfully !");
		model.addAttribute("userReviews", this.userReviewsService.getAllReviews());
		return "admin-section/jsp/userReviews";
	}

	// user review hiding url
	@RequestMapping(path = "/user-review-hide/{id}")
	public String hideUserReview(@PathVariable("id") int id, Model model) {

		this.userReviewsService.hideUserReview(id);

		model.addAttribute("user_rev_hdn_msg", "User Review is hidden !");
		model.addAttribute("userReviews", this.userReviewsService.getAllReviews());
		return "admin-section/jsp/userReviews";
	}

	// user review deleting url
	@RequestMapping(path = "/user-review-delete/{id}")
	public String deleteUserReview(@PathVariable("id") int id, Model model) {

		this.userReviewsService.deleteUserReview(id);

		model.addAttribute("user_rev_msg", "User review has deleted successfully !");
		model.addAttribute("userReviews", this.userReviewsService.getAllReviews());
		return "admin-section/jsp/userReviews";
	}
}
