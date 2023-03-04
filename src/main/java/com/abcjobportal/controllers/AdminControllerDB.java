package com.abcjobportal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abcjobportal.entities.Admins;
import com.abcjobportal.services.AdminsService;

@Controller
public class AdminControllerDB {

	@Autowired
	private AdminsService adminsService;

	// admin creating url
	@RequestMapping(path = "/create-admin", method = RequestMethod.POST)
	public String createAdmin(@ModelAttribute() Admins admin, Model model) {

		this.adminsService.createAdmin(admin);

		model.addAttribute("admin_creted_msg", "Admin created successfully !");
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/adminDashboard";
	}

	// admin fetching url
	@RequestMapping(path = "/edit-admin/{id}")
	public String editAdmin(@PathVariable("id") int id, Model model) {
		model.addAttribute("admin", this.adminsService.getAdmin(id));
		return "admin-section/jsp/adminDashboardEdit";
	}

	// admin updating url
	@RequestMapping(path = "/edit-admin/edited-admin-info", method = RequestMethod.POST)
	public String editedAdmin(@ModelAttribute() Admins admin, Model model) {

		this.adminsService.createAdmin(admin);

		model.addAttribute("admin_creted_msg", "Admin information edited successfully !");
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/adminDashboard";
	}

	// admin deleting url
	@RequestMapping(path = "/delete-admin/{id}")
	public String deleteAdmin(@PathVariable("id") int id, Model model) {

		this.adminsService.deleteAdmin(id);

		model.addAttribute("admin_creted_msg", "Admin deleted successfully !");
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/adminDashboard";
	}

}
