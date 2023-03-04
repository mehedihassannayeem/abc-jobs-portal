package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.CareerDevCourse;

@Repository
public interface CareerDevCourseRepository extends JpaRepository<CareerDevCourse, Integer> {

}
