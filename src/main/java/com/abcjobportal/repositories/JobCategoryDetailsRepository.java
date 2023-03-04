package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.JobCategoryDetails;

@Repository
public interface JobCategoryDetailsRepository extends JpaRepository<JobCategoryDetails, Integer> {

}
