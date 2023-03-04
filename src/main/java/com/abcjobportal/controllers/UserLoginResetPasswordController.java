package com.abcjobportal.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.abcjobportal.entities.UserNewsfeedPostCommnets;
import com.abcjobportal.entities.UserNewsfeedPosts;
import com.abcjobportal.entities.UserProfile;
import com.abcjobportal.services.CareerDevCourseService;
import com.abcjobportal.services.ElearningCourseMaterialsService;
import com.abcjobportal.services.JobCategoryDetailsService;
import com.abcjobportal.services.JobInternshipsService;
import com.abcjobportal.services.JobSkillsDetailsService;
import com.abcjobportal.services.JobTendersService;
import com.abcjobportal.services.JobsDetailService;
import com.abcjobportal.services.UserAppliedJobsService;
import com.abcjobportal.services.UserEducationalBackgroundService;
import com.abcjobportal.services.UserFoundJobsServices;
import com.abcjobportal.services.UserNewsfeedPostCommnetsService;
import com.abcjobportal.services.UserNewsfeedPostsService;
import com.abcjobportal.services.UserProfessionalBackgroundService;
import com.abcjobportal.services.UserProfileService;
import com.abcjobportal.services.UserReviewsService;
import com.abcjobportal.services.UserSkillsBackgroundService;
import com.abcjobportal.services.WebsiteAdsService;
import com.abcjobportal.smtp.EmailsControlHanlder;
import com.abcjobportal.smtp.ResetProfilePassword;

@Controller
public class UserLoginResetPasswordController {

	@Autowired
	private UserProfileService userProfileService;

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
	private UserProfessionalBackgroundService userProfessionalBackgroundService;

	@Autowired
	private UserEducationalBackgroundService userEducationalBackgroundService;

	@Autowired
	private UserSkillsBackgroundService userSkillsBackgroundService;

	@Autowired
	private UserAppliedJobsService userAppliedJobsService;

	@Autowired
	private UserNewsfeedPostsService userNewsfeedPostsService;

	@Autowired
	private WebsiteAdsService websiteAdsService;

	@Autowired
	private UserNewsfeedPostCommnetsService userNewsfeedPostCommnetsService;

	@ModelAttribute
	public void allCommonModel(Model model) {

		// jobs feed
		model.addAttribute("allJobs", this.jobsDetailService.getAllJobs());
		model.addAttribute("newJobSl", this.jobsDetailService.getJobsCount());
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

	//
	//
	//
	//
	// login page
	@RequestMapping("/login")
	public String loginPage(Model model) {
		return "login";
	}

	//
	//
	//
	//
	// forgot password
	@RequestMapping("/forgot-password")
	public String forgetPasswordPage(Model model) {
		return "forgot-password";
	}

	//
	//
	//
	//
	// forgot password confirmation
	@RequestMapping("/forgot-password-confirmation")
	public String forgetPasswordConfirmationPage(@RequestParam("forgotPassIdentity") String userProvideEmail,
			Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		RequestDispatcher rDispatcher = null;

		UserProfile resPassUser = this.userProfileService.getResPassUser(userProvideEmail);

		try {
			if (resPassUser == null) {
				request.setAttribute("status", "userError");
				rDispatcher = request.getRequestDispatcher("forgot-password");
				rDispatcher.forward(request, response);
			} else {
				// calling the email control handler
				EmailsControlHanlder ech = new EmailsControlHanlder();
				String resetOTP = ech.getResetPassOtp();

				ResetProfilePassword resetUser = new ResetProfilePassword(
						resPassUser.getUp_userPersonalInfo().getFullname(), resPassUser.getEmail(), resetOTP);

				// getting the path of the logo.png to send with email
				String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
						+ File.separator + "images" + File.separator + "abc-content" + File.separator + "logo.png";

				boolean checkUserIdentity = ech.resetEmailSend(resetUser, path);

				if (checkUserIdentity) {
					session.setAttribute("userResetAuthOtp", resetOTP);
					session.setAttribute("resetProfile", resPassUser);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "forgot-password-confirmation";
	}

	//
	//
	//
	//
	// registration confirm email
	@RequestMapping(path = "/reset-account-password", method = RequestMethod.POST)
	public String resetConfrimEmail(Model model) {
		return "forgot-change-password";
	}

	//
	//
	//
	//
	// password reset successful
	@RequestMapping("/password-reset")
	public String resetPassSuccess(@RequestParam("forgotPassIdentity") String userProvideEmail,
			@RequestParam("forgotPassConfirm") String userProvidePass, HttpServletRequest rServletRequest,
			HttpSession session) {
		this.userProfileService.changePass(userProvidePass, userProvideEmail);

		// getting the path of the logo.png to send with email
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "images" + File.separator + "abc-content" + File.separator + "logo.png";

		// calling the email control handler
		new EmailsControlHanlder().resetEmailNotify(userProvideEmail, path);

		rServletRequest.getSession().invalidate();
		return "redirect:/login";
	}

	@RequestMapping("/pass-revert-for/{userEmail}")
	@ResponseBody
	public String revertPassword(@PathVariable("userEmail") String email) {

		return "<center><h2>Password revert functionality is coming soon !!!<br><br>Your current password for login is - <br><br>"
				+ this.userProfileService.passwordRevert(email)
				+ "</h2></center><h3>Use this to loging into your account.</h3>";
	}

	//
	//
	//
	//
	// homepage

	@RequestMapping("/homepage")
	public String homePage(@ModelAttribute() UserProfile uProfile, HttpServletRequest request,
			HttpServletResponse response, Model model, HttpSession session) {
		model.addAttribute("jobDetails", this.jobsDetailService.getJob(1));

		RequestDispatcher rDispatcher = null;

		if (session.getAttribute("loggedUserProfile") == null) {
			UserProfile loginUserProfile = this.userProfileService.getLoginUserProfile(uProfile.getEmail(),
					uProfile.getUser_password());
			try {
				if (loginUserProfile == null) {
					request.setAttribute("status", "noUserFound");
					rDispatcher = request.getRequestDispatcher("login");
					rDispatcher.forward(request, response);

				} else {
					session.setAttribute("loggedUserProfile", loginUserProfile);
					model.addAttribute("searchedJobs", this.userFoundJobsServices
							.getAllFoundJobsLoggedUser(loginUserProfile.getUser_profile_id()));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (session.getAttribute("loggedUserProfile") != null) {
			UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");
			model.addAttribute("searchedJobs",
					this.userFoundJobsServices.getAllFoundJobsLoggedUser(logUserProfile.getUser_profile_id()));
		}

		return "homepage";
	}

	//
	//
	//
	//
	// job detials fetching url
	@RequestMapping(path = "/homepage/get-job-detail-logged/{id}")
	public String getJobDetails(@PathVariable("id") int id, HttpServletRequest request, HttpSession session,
			Model model) {
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {
			model.addAttribute("jobDetails", this.jobsDetailService.getJob(id));

			model.addAttribute("searchedJobs",
					this.userFoundJobsServices.getAllFoundJobsLoggedUser(logUserProfile.getUser_profile_id()));
		}

		return "homepage";
	}

	//
	//
	//
	//
	// dashboard
	@RequestMapping("/dashboard")
	public String dashboard(Model model, HttpSession session) {
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {
			model.addAttribute("proBackInfos",
					this.userProfessionalBackgroundService.userProBackground(logUserProfile.getUser_profile_id()));
			model.addAttribute("eduBackInfos",
					this.userEducationalBackgroundService.userEduBackground(logUserProfile.getUser_profile_id()));
			model.addAttribute("skillBackInfos",
					this.userSkillsBackgroundService.userSkillBackground(logUserProfile.getUser_profile_id()));
		}

		return "dashboard";
	}

	//
	//
	//
	//
	// user personal information update
	@RequestMapping(path = "/update-personal-info", method = RequestMethod.POST)
	public RedirectView updateProfile(@ModelAttribute() UserProfile userProfile, HttpSession session) {

		this.userProfileService.updateInfo(userProfile);

		// getting the logged user
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		// resetting the or updating the session after updating the user profile
		UserProfile loginUserProfile = this.userProfileService.getProfileData(logUserProfile.getUser_profile_id());
		session.setAttribute("loggedUserProfile", loginUserProfile);

		RedirectView rView = new RedirectView();
		rView.setUrl(session.getServletContext().getContextPath() + "/dashboard");
		return rView;
	}

	//
	//
	//
	//
	// user profile image upload
	@RequestMapping(path = "/user-proflie-image", method = RequestMethod.POST)
	public RedirectView fileUpload(@RequestParam("profileImageUpload") CommonsMultipartFile fMultipartFile,
			HttpSession session) throws Exception {

		// getting the path to store the content
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "user-contents" + File.separator + fMultipartFile.getOriginalFilename();

		// storing the content
		byte[] data = fMultipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(path);
		fos.write(data);
		fos.close();

		// getting the logged user
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		// setting the image to the user
		this.userProfileService.uploadImage(fMultipartFile.getOriginalFilename(), logUserProfile.getUser_profile_id());

		// resetting the or updating the session after updating the user profile
		UserProfile loginUserProfile = this.userProfileService.getProfileData(logUserProfile.getUser_profile_id());
		session.setAttribute("loggedUserProfile", loginUserProfile);

		// redirecting
		RedirectView rView = new RedirectView();
		rView.setUrl(session.getServletContext().getContextPath() + "/dashboard");
		return rView;
	}

	//
	//
	//
	//
	// public profile
	@RequestMapping(path = "/public-profile/{url}")
	public String publicProfile(@PathVariable("url") String url, Model model, HttpSession session) {

		UserProfile publicProfile = this.userProfileService.getPublicProfile(url);

		model.addAttribute("userPublicProfile", publicProfile);

		model.addAttribute("proBackInfos",
				this.userProfessionalBackgroundService.userProBackground(publicProfile.getUser_profile_id()));
		model.addAttribute("eduBackInfos",
				this.userEducationalBackgroundService.userEduBackground(publicProfile.getUser_profile_id()));
		model.addAttribute("skillBackInfos",
				this.userSkillsBackgroundService.userSkillBackground(publicProfile.getUser_profile_id()));
		return "public-profile";
	}

	//
	//
	//
	//
	// user password change
	@RequestMapping(path = "/user-proflie-password", method = RequestMethod.POST)
	public String profilePasswordChange(@RequestParam("userOldPassword") String userOldPassword,
			@RequestParam("userNewPassword") String userNewPassword,
			@RequestParam("userNewPassCon") String userNewPassCon, Model model, HttpSession session) {

		model.addAttribute("proPassChangeMsg",
				this.userProfileService.profilePasswordChange(userOldPassword, userNewPassword, userNewPassCon));

		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {
			model.addAttribute("proBackInfos",
					this.userProfessionalBackgroundService.userProBackground(logUserProfile.getUser_profile_id()));
			model.addAttribute("eduBackInfos",
					this.userEducationalBackgroundService.userEduBackground(logUserProfile.getUser_profile_id()));
			model.addAttribute("skillBackInfos",
					this.userSkillsBackgroundService.userSkillBackground(logUserProfile.getUser_profile_id()));
		}

		return "dashboard";
	}

	//
	//
	//
	//
	// user newsfeed url
	@RequestMapping("/user-newsfeed")
	public String userNewsFeed(Model model, HttpSession session) {
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {
			model.addAttribute("appliedJobs",
					this.userAppliedJobsService.getAppliedJobs(logUserProfile.getUser_profile_id()));
			model.addAttribute("allPosts", this.userNewsfeedPostsService.getUsersPosts());
			model.addAttribute("ads", this.websiteAdsService.getAllAds());
			model.addAttribute("newsfeedShowUrl", "mypost");
		}

		return "newsfeed";
	}

	//
	//
	//
	//
	// user newsfeed posting url
	@RequestMapping(path = "/user-newsfeed-post", method = RequestMethod.POST)
	public String userNewsFeedPost(@ModelAttribute() UserNewsfeedPosts userNewsfeedPosts, HttpSession session) {
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {
			this.userNewsfeedPostsService.newPost(userNewsfeedPosts, logUserProfile);
		}

		return "redirect:/user-newsfeed";
	}

	//
	//
	//
	//
	// user personal newsfeed url
	@RequestMapping("/user-personal-newsfeed-post")
	public String userNewsFeedPost(Model model, HttpSession session) {
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {
			model.addAttribute("appliedJobs",
					this.userAppliedJobsService.getAppliedJobs(logUserProfile.getUser_profile_id()));
			model.addAttribute("myPosts",
					this.userNewsfeedPostsService.getUserPosts(logUserProfile.getUser_profile_id()));
			model.addAttribute("ads", this.websiteAdsService.getAllAds());
			model.addAttribute("newsfeedShowUrl", "allpost");
		}

		return "newsfeed";
	}

	//
	//
	//
	//
	// user post comment fetching url
	@RequestMapping("/user-newsfeed-post-commnets/{pid}")
	public String userNewsFeedPostComments(@PathVariable("pid") int pid, Model model, HttpSession session) {
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {
			model.addAttribute("appliedJobs",
					this.userAppliedJobsService.getAppliedJobs(logUserProfile.getUser_profile_id()));
			model.addAttribute("commentPost", this.userNewsfeedPostsService.getCommentPost(pid));
			model.addAttribute("ads", this.websiteAdsService.getAllAds());
			model.addAttribute("postComments", this.userNewsfeedPostCommnetsService.postCommnets(pid));
			model.addAttribute("newsfeedShowUrl", "bothpost");
		}

		return "newsfeed-post-comments";
	}

	//
	//
	//
	//
	// user post comment posting url
	@RequestMapping(path = "/post-a-comment", method = RequestMethod.POST)
	public String userNewsFeedCommentPost(@ModelAttribute() UserNewsfeedPostCommnets userNewsfeedPostCommnets,
			HttpSession session) {
		UserProfile logUserProfile = (UserProfile) session.getAttribute("loggedUserProfile");

		if (logUserProfile != null) {

			this.userNewsfeedPostCommnetsService.userComment(userNewsfeedPostCommnets, logUserProfile);

		}

		return "redirect:/user-newsfeed-post-commnets/" + userNewsfeedPostCommnets.getPost_id();
	}

	//
	//
	//
	//
	// searched user listing
	@RequestMapping(path = "/searching-user-lists", method = RequestMethod.POST)
	public String getFoundUsers(@RequestParam("pubProSearch") String findUser, Model model) {

		List<UserProfile> matchedProfile = this.userProfileService.matchedProfile(findUser);

		if (matchedProfile.isEmpty()) {
			model.addAttribute("userMatched", "noUserFound");
		} else {
			model.addAttribute("userMatched", this.userProfileService.matchedProfile(findUser));
			model.addAttribute("ads", this.websiteAdsService.getAllAds());
		}

		return "list-search-results";
	}

	// for empty field error message
	@RequestMapping("/searched-user-listing")
	public String userListing() {

		return "list-search-results";
	}

	//
	//
	//
	//
	// logout
	@RequestMapping("/logout")
	public String logout(HttpServletRequest rServletRequest) {
		rServletRequest.getSession().invalidate();
		return "redirect:/login";
	}

}
