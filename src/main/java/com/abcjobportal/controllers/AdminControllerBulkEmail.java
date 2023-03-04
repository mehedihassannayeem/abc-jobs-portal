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

import com.abcjobportal.entities.BulkEmails;
import com.abcjobportal.services.AdminsService;
import com.abcjobportal.services.BulkEmailsService;
import com.abcjobportal.smtp.EmailsControlHanlder;
import com.abcjobportal.smtp.InviteUsers;

@Controller
public class AdminControllerBulkEmail {

	@Autowired
	private AdminsService adminsService;

	@Autowired
	private BulkEmailsService bulkEmailsService;

	// inviting users to the portal
	@RequestMapping(path = "/invite-new-user", method = RequestMethod.POST)
	public String sentEmail(@ModelAttribute() BulkEmails bulkEmail, HttpSession session, Model model) {

		// calling the email control handler
		EmailsControlHanlder ech = new EmailsControlHanlder();

		InviteUsers invitedUsers = new InviteUsers(bulkEmail.getInvited_email_address_1(),
				bulkEmail.getInvited_email_address_2(), bulkEmail.getInvited_email_address_3(),
				bulkEmail.getInvited_email_address_4(), bulkEmail.getInvited_email_address_5());

		// getting the path of the logo.png to send with email
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "images" + File.separator + "abc-content" + File.separator + "logo.png";

		boolean checkEmailSentStatus = ech.bulkEmailInviteUsers(invitedUsers, path);

		if (checkEmailSentStatus) {
			this.bulkEmailsService.inviteUser(bulkEmail);
			model.addAttribute("email_sent_msg", "Email sent successfully !");
		} else {
			model.addAttribute("email_sent_msg_un", "Email sending unsuccessful !!!");
		}
		model.addAttribute("allEmails", this.bulkEmailsService.getAllEmails());

		return "admin-section/jsp/allSentEmails";
	}

	// invited users fetching url
	@RequestMapping(path = "/re-send-emails/{id}")
	public String inviteAgain(@PathVariable("id") int id, Model model) {
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		model.addAttribute("resendEmails", this.bulkEmailsService.getSentEmails(id));
		return "admin-section/jsp/sentNewEmailResend";
	}

	// invited users updating url
	@RequestMapping(path = "/re-send-emails/sent-emails-again", method = RequestMethod.POST)
	public String resendEmails(@ModelAttribute() BulkEmails bulkEmails, HttpSession session, Model model) {

		// calling the email control handler
		EmailsControlHanlder ech = new EmailsControlHanlder();

		InviteUsers invitedUsers = new InviteUsers(bulkEmails.getInvited_email_address_1(),
				bulkEmails.getInvited_email_address_2(), bulkEmails.getInvited_email_address_3(),
				bulkEmails.getInvited_email_address_4(), bulkEmails.getInvited_email_address_5());

		// getting the path of the logo.png to send with email
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "images" + File.separator + "abc-content" + File.separator + "logo.png";

		boolean checkEmailSentStatus = ech.bulkEmailInviteUsers(invitedUsers, path);

		if (checkEmailSentStatus) {
			this.bulkEmailsService.inviteUser(bulkEmails);
			model.addAttribute("email_sent_msg", "Resending emails successfully !");
		} else {
			model.addAttribute("email_sent_msg_un", "Resending emails unsuccessful !!!");
		}
		model.addAttribute("allEmails", this.bulkEmailsService.getAllEmails());

		return "admin-section/jsp/allSentEmails";
	}

	// invited users deleting url
	@RequestMapping(path = "/delete-send-emails/{id}")
	public String deleteInvitation(@PathVariable("id") int id, Model model) {

		this.bulkEmailsService.deleteSentEmails(id);

		model.addAttribute("email_sent_msg", "Emails deleted successfully !");
		model.addAttribute("allEmails", this.bulkEmailsService.getAllEmails());

		return "admin-section/jsp/allSentEmails";
	}
}
