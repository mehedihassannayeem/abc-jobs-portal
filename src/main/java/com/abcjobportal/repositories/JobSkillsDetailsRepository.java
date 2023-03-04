package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.JobSkillsDetails;

@Repository
public interface JobSkillsDetailsRepository extends JpaRepository<JobSkillsDetails, Integer> {

}
