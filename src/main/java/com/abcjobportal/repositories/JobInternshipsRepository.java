package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.JobInternships;

@Repository
public interface JobInternshipsRepository extends JpaRepository<JobInternships, Integer> {

}
