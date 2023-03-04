package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.CourseShiftInfo;
import com.abcjobportal.repositories.CourseShiftInfoRepository;

@Service
public class CourseShiftInfoService {

	@Autowired
	private CourseShiftInfoRepository courseShiftInfoRepository;

	// creating career dev course shift
	public void createCareerDevCourseShift(CourseShiftInfo courseShiftInfo) {
		this.courseShiftInfoRepository.save(courseShiftInfo);
	}

	// fetching all career dev course shifts
	public List<CourseShiftInfo> getAllCareerDevCourseShifts() {
		return this.courseShiftInfoRepository.findAll();
	}

	// fetching a particular career dev course shift
	public CourseShiftInfo getCareerDevCourseShift(int id) {
		return this.courseShiftInfoRepository.findById(id).get();
	}

	// deleting career dev course shift
	public void deleteCareerDevCourseShift(int id) {
		this.courseShiftInfoRepository.deleteById(id);
	}

}
