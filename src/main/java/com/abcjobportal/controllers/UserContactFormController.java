package com.abcjobportal.controllers;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abcjobportal.entities.UserContactForm;
import com.abcjobportal.services.AdminsService;
import com.abcjobportal.services.UserContactFormService;
import com.abcjobportal.smtp.ContactFormResponse;
import com.abcjobportal.smtp.EmailsControlHanlder;

@Controller
public class UserContactFormController {

	@Autowired
	private UserContactFormService userContactFormService;

	@Autowired
	private AdminsService adminsService;

	// contact form creating url
	@RequestMapping(path = "/contact-form", method = RequestMethod.POST)
	public String contactForm(@ModelAttribute() UserContactForm userContactForm, Model model) {
		this.userContactFormService.createContactForm(userContactForm);
		return "contactForm";
	}

	// contact form invalid info url
	@RequestMapping(path = "/contact-form-error")
	public String contactFormError(Model model) {
		return "contactForm";
	}

	// contact form fetching url
	@RequestMapping(path = "/response-user-query/{id}")
	public String editContactForm(@PathVariable("id") int id, Model model) {
		model.addAttribute("contactForm", this.userContactFormService.getContactForm(id));
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/userContactFormResponse";
	}

	// contact form updating url
	@RequestMapping(path = "/response-user-query/responsed", method = RequestMethod.POST)
	public String editedContactForm(@ModelAttribute() UserContactForm userContactForm, Model model,
			HttpSession session) {

		// calling the email control handler
		EmailsControlHanlder ech = new EmailsControlHanlder();

		ContactFormResponse cfr = new ContactFormResponse(userContactForm.getUser_name(),
				userContactForm.getUser_email(), userContactForm.getUser_query(), userContactForm.getResponse_id(),
				userContactForm.getResponse(), userContactForm.getResponse_taken_by());

		// getting the path of the logo.png to send with email
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "images" + File.separator + "abc-content" + File.separator + "logo.png";

		// sending email to the user, with appropriate response
		boolean checkEmailSentStatus = ech.UserQueriesResponse(cfr, path);

		if (checkEmailSentStatus) {
			// storing into the database if mail send successfully
			this.userContactFormService.createContactForm(userContactForm);
			model.addAttribute("contactForm_msg", "You have successfully responded to the user!");
		}

		model.addAttribute("contactForm_msg_err", "Something went wrong while sending email to the user!");
		model.addAttribute("contactForms", this.userContactFormService.getAllContactForms());

		return "admin-section/jsp/userContactForm";
	}

	// contact form deleting url
	@RequestMapping(path = "/delete-user-query/{id}")
	public String deleteContactForm(@PathVariable("id") int id, Model model) {

		this.userContactFormService.deleteContactForm(id);

		model.addAttribute("contactForm_msg", "User response deleted successfully !");
		model.addAttribute("contactForms", this.userContactFormService.getAllContactForms());
		return "admin-section/jsp/userContactForm";
	}
}
