package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "elearning_course_materials")
public class ElearningCourseMaterials {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ecourse_id;
	private String admin_name;
	private String ecourse_title;
	private String ecourse_image;
	private int joined_by;
	private int hours_required;
	private int videos;
	private int quizzes;
	private int notes;
	private String certificate;

	public int getEcourse_id() {
		return ecourse_id;
	}

	public void setEcourse_id(int ecourse_id) {
		this.ecourse_id = ecourse_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getEcourse_title() {
		return ecourse_title;
	}

	public void setEcourse_title(String ecourse_title) {
		this.ecourse_title = ecourse_title;
	}

	public String getEcourse_image() {
		return ecourse_image;
	}

	public void setEcourse_image(String ecourse_image) {
		this.ecourse_image = ecourse_image;
	}

	public int getJoined_by() {
		return joined_by;
	}

	public void setJoined_by(int joined_by) {
		this.joined_by = joined_by;
	}

	public int getHours_required() {
		return hours_required;
	}

	public void setHours_required(int hours_required) {
		this.hours_required = hours_required;
	}

	public int getVideos() {
		return videos;
	}

	public void setVideos(int videos) {
		this.videos = videos;
	}

	public int getQuizzes() {
		return quizzes;
	}

	public void setQuizzes(int quizzes) {
		this.quizzes = quizzes;
	}

	public int getNotes() {
		return notes;
	}

	public void setNotes(int notes) {
		this.notes = notes;
	}

	public String getCertificate() {
		return certificate;
	}

	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}

}
