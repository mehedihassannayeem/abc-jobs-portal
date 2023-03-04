package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.CourseShiftInfo;

@Repository
public interface CourseShiftInfoRepository extends JpaRepository<CourseShiftInfo, Integer> {

}
