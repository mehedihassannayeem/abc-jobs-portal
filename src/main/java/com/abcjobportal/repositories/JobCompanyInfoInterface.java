package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.JobCompanyInfo;

@Repository
public interface JobCompanyInfoInterface extends JpaRepository<JobCompanyInfo, Integer> {

}
