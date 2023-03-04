package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.JobTenders;

@Repository
public interface JobTendersRepositroy extends JpaRepository<JobTenders, Integer> {

}
