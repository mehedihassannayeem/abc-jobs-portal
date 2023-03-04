package com.abcjobportal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abcjobportal.entities.ElearningCourseMaterials;
import com.abcjobportal.services.AdminsService;
import com.abcjobportal.services.ElearningCourseMaterialsService;

@Controller
public class AdminControllerElearningCourse {

	@Autowired
	private AdminsService adminsService;

	@Autowired
	private ElearningCourseMaterialsService elearningCourseMaterialsService;

	// e-learing course creating url
	@RequestMapping(path = "/elearn-create-course", method = RequestMethod.POST)
	public String createElearningCourse(@ModelAttribute() ElearningCourseMaterials elearningCourseMaterials,
			Model model) {

		this.elearningCourseMaterialsService.elearningCreate(elearningCourseMaterials);

		model.addAttribute("elearn_msg", "E-Learning Course created successfully !");
		model.addAttribute("elearnCourses", this.elearningCourseMaterialsService.elearningAllCourses());

		return "admin-section/jsp/eLearningAllCourse";
	}

	// e-learing course fetching url
	@RequestMapping(path = "/edit-elearn-course/{id}")
	public String editElearningCourse(@PathVariable("id") int id, Model model) {
		model.addAttribute("course", this.elearningCourseMaterialsService.elearningCourse(id));
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/eLearningCreateCourseEdit";
	}

	// e-learing course updating url
	@RequestMapping(path = "/edit-elearn-course/edited-course", method = RequestMethod.POST)
	public String editedElearningCourse(@ModelAttribute() ElearningCourseMaterials elearningCourseMaterials,
			Model model) {

		this.elearningCourseMaterialsService.elearningCreate(elearningCourseMaterials);

		model.addAttribute("elearn_msg", "E-Learning Course information edited successfully !");
		model.addAttribute("elearnCourses", this.elearningCourseMaterialsService.elearningAllCourses());
		return "admin-section/jsp/eLearningAllCourse";
	}

	// e-learing course deleting url
	@RequestMapping(path = "/delete-elearn-course/{id}")
	public String deleteElearningCourse(@PathVariable("id") int id, Model model) {

		this.elearningCourseMaterialsService.elearningDelete(id);

		model.addAttribute("elearn_msg", "E-Learning Course deleted successfully !");
		model.addAttribute("elearnCourses", this.elearningCourseMaterialsService.elearningAllCourses());
		return "admin-section/jsp/eLearningAllCourse";
	}

}
