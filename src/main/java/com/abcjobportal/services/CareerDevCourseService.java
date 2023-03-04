package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.CareerDevCourse;
import com.abcjobportal.repositories.CareerDevCourseRepository;

@Service
public class CareerDevCourseService {

	@Autowired
	private CareerDevCourseRepository careerDevCourseRepository;

	// creating career dev course
	public void createCareerDevCourse(CareerDevCourse careerDevCourse) {
		this.careerDevCourseRepository.save(careerDevCourse);
	}

	// fetching all career dev courses
	public List<CareerDevCourse> getAllCareerDevCourses() {
		return this.careerDevCourseRepository.findAll();
	}

	// fetching a particular career dev course
	public CareerDevCourse getCareerDevCourse(int id) {
		return this.careerDevCourseRepository.findById(id).get();
	}

	// deleting career dev course
	public void deleteCareerDevCourse(int id) {
		this.careerDevCourseRepository.deleteById(id);
	}

}
