package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "course_shift_info")
public class CourseShiftInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int course_shift_id;
	private String admin_name;
	private String shift_details;

	public int getCourse_shift_id() {
		return course_shift_id;
	}

	public void setCourse_shift_id(int course_shift_id) {
		this.course_shift_id = course_shift_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getShift_details() {
		return shift_details;
	}

	public void setShift_details(String shift_details) {
		this.shift_details = shift_details;
	}

}
