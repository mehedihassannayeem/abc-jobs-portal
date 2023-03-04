package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "career_development_contents")
public class CareerDevCourse {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int career_dev_con_id;
	private String admin_name;
	private int course_shift;
	private String course_title;
	private String course_image;
	private String course_date;
	private String course_schedule;

	public int getCareer_dev_con_id() {
		return career_dev_con_id;
	}

	public void setCareer_dev_con_id(int career_dev_con_id) {
		this.career_dev_con_id = career_dev_con_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public int getCourse_shift() {
		return course_shift;
	}

	public void setCourse_shift(int course_shift) {
		this.course_shift = course_shift;
	}

	public String getCourse_title() {
		return course_title;
	}

	public void setCourse_title(String course_title) {
		this.course_title = course_title;
	}

	public String getCourse_image() {
		return course_image;
	}

	public void setCourse_image(String course_image) {
		this.course_image = course_image;
	}

	public String getCourse_date() {
		return course_date;
	}

	public void setCourse_date(String course_date) {
		this.course_date = course_date;
	}

	public String getCourse_schedule() {
		return course_schedule;
	}

	public void setCourse_schedule(String course_schedule) {
		this.course_schedule = course_schedule;
	}

}
