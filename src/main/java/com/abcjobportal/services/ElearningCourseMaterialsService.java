package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.ElearningCourseMaterials;
import com.abcjobportal.repositories.ElearningCourseMaterialsRepository;

@Service
public class ElearningCourseMaterialsService {

	@Autowired
	private ElearningCourseMaterialsRepository elearningCourseMaterialsRepository;

	// creating e-learing course
	public void elearningCreate(ElearningCourseMaterials elearningCourseMaterials) {
		this.elearningCourseMaterialsRepository.save(elearningCourseMaterials);
	}

	// fetching all e-learing course
	public List<ElearningCourseMaterials> elearningAllCourses() {
		return this.elearningCourseMaterialsRepository.findAll();
	}

	// fetching a particular e-learing course
	public ElearningCourseMaterials elearningCourse(int id) {
		return this.elearningCourseMaterialsRepository.findById(id).get();
	}

	// deleting e-learing course
	public void elearningDelete(int id) {
		this.elearningCourseMaterialsRepository.deleteById(id);
	}

}
