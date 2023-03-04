package com.abcjobportal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abcjobportal.entities.CareerDevCourse;
import com.abcjobportal.entities.CourseShiftInfo;
import com.abcjobportal.services.AdminsService;
import com.abcjobportal.services.CareerDevCourseService;
import com.abcjobportal.services.CourseShiftInfoService;

@Controller
public class AdminControllerCareerDevCourse {

	@Autowired
	private AdminsService adminsService;

	@Autowired
	private CourseShiftInfoService courseShiftInfoService;

	@Autowired
	private CareerDevCourseService careerDevCourseService;

	//
	//
	//
	//
	// career dev course shift creating url
	@RequestMapping(path = "/create-career-dev-course-shift", method = RequestMethod.POST)
	public String createDevCourseShift(@ModelAttribute() CourseShiftInfo courseShiftInfo, Model model) {

		this.courseShiftInfoService.createCareerDevCourseShift(courseShiftInfo);

		model.addAttribute("dev_shift_msg", "Career Development Course Shift created successfully !");
		model.addAttribute("devShifts", this.courseShiftInfoService.getAllCareerDevCourseShifts());
		model.addAttribute("admins", this.adminsService.getAllAdmins());

		return "admin-section/jsp/careerDevCourseShift";
	}

	// career dev course shift fetching url
	@RequestMapping(path = "/edit-career-dev-course-shift/{id}")
	public String editDevCourseShift(@PathVariable("id") int id, Model model) {
		model.addAttribute("devShift", this.courseShiftInfoService.getCareerDevCourseShift(id));
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/careerDevCourseShiftEdit";
	}

	// career dev course shift updating url
	@RequestMapping(path = "/edit-career-dev-course-shift/edited-dev-course-shift", method = RequestMethod.POST)
	public String editedDevCourseShift(@ModelAttribute() CourseShiftInfo courseShiftInfo, Model model) {

		this.courseShiftInfoService.createCareerDevCourseShift(courseShiftInfo);

		model.addAttribute("dev_shift_msg", "Career Development Course Shift information edited successfully !");
		model.addAttribute("devShifts", this.courseShiftInfoService.getAllCareerDevCourseShifts());
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/careerDevCourseShift";
	}

	// career dev course shift deleting url
	@RequestMapping(path = "/delete-career-dev-course-shift/{id}")
	public String deleteDevCourseShift(@PathVariable("id") int id, Model model) {

		this.courseShiftInfoService.deleteCareerDevCourseShift(id);

		model.addAttribute("dev_shift_msg", "Career Development Course Shift deleted successfully !");
		model.addAttribute("devShifts", this.courseShiftInfoService.getAllCareerDevCourseShifts());
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		return "admin-section/jsp/careerDevCourseShift";
	}

	//
	//
	//
	//
	// career development course creating url
	@RequestMapping(path = "/create-career-dev-course", method = RequestMethod.POST)
	public String createCareerDevCourse(@ModelAttribute() CareerDevCourse careerDevCourse, Model model) {

		this.careerDevCourseService.createCareerDevCourse(careerDevCourse);

		model.addAttribute("carDev_msg", "Career Development Course created successfully !");
		model.addAttribute("careerDevCourses", this.careerDevCourseService.getAllCareerDevCourses());

		return "admin-section/jsp/careerDevAllCourse";
	}

	// career development course fetching url
	@RequestMapping(path = "/edit-career-dev-course/{id}")
	public String editCareerDevCourse(@PathVariable("id") int id, Model model) {
		model.addAttribute("careerDevCourse", this.careerDevCourseService.getCareerDevCourse(id));
		model.addAttribute("admins", this.adminsService.getAllAdmins());
		model.addAttribute("shifts", this.courseShiftInfoService.getAllCareerDevCourseShifts());
		return "admin-section/jsp/careerDevCreateCourseEdit";
	}

	// career development course updating url
	@RequestMapping(path = "/edit-career-dev-course/edited-course", method = RequestMethod.POST)
	public String editedCareerDevCourse(@ModelAttribute() CareerDevCourse careerDevCourse, Model model) {

		this.careerDevCourseService.createCareerDevCourse(careerDevCourse);

		model.addAttribute("carDev_msg", "Career Development Course information edited successfully !");
		model.addAttribute("careerDevCourses", this.careerDevCourseService.getAllCareerDevCourses());

		return "admin-section/jsp/careerDevAllCourse";
	}

	// career development course deleting url
	@RequestMapping(path = "/delete-career-dev-course/{id}")
	public String deleteCareerDevCourse(@PathVariable("id") int id, Model model) {

		this.careerDevCourseService.deleteCareerDevCourse(id);

		model.addAttribute("carDev_msg", "Career Development Course deleted successfully !");
		model.addAttribute("careerDevCourses", this.careerDevCourseService.getAllCareerDevCourses());
		return "admin-section/jsp/careerDevAllCourse";
	}

}
