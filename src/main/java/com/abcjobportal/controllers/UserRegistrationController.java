package com.abcjobportal.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abcjobportal.entities.UserProfile;
import com.abcjobportal.services.UserProfileService;

@Controller
public class UserRegistrationController {

	@Autowired
	private UserProfileService userProfileService;

	//
	//
	//
	//
	// registration
	@RequestMapping("/registration")
	public String registrationPage(Model model) {
		return "registration";
	}

	//
	//
	//
	//
	// registration confirm email
	@RequestMapping(path = "/registration-confirm-email", method = RequestMethod.POST)
	public String registrationConfrimEmailPage(@ModelAttribute UserProfile uProfile, Model model, HttpSession session) {

		/*
		 * replacing all the space around or between words (handling database error
		 * while making a clean url)
		 */
		uProfile.setUsername(uProfile.getUsername().trim().replaceAll("\\s+", "-").toLowerCase());

		// replacing all the space around words (handling database error)
		uProfile.setEmail(uProfile.getEmail().trim().replaceAll("\\s+", ""));

		uProfile.setProfile_link("http://localhost:8585/AbcJobPortal/public-profile/" + uProfile.getUsername());
		session.setAttribute("newRegUser", uProfile);
		return "registration-confirm-email";
	}

	//
	//
	//
	//
	// registration account confirmation
	@RequestMapping("/registration-confirmation")
	public String registrationConfrimationPage(Model model, HttpServletRequest rq) {
		this.userProfileService.regNewUser((UserProfile) rq.getSession().getAttribute("newRegUser"));
		return "registration-confirmation";
	}

	//
	//
	//
	//
	// registration successful
	@RequestMapping("/reg-success")
	public String regSuccess(HttpServletRequest rServletRequest) {
		rServletRequest.getSession().invalidate();
		return "redirect:/login";
	}

}
