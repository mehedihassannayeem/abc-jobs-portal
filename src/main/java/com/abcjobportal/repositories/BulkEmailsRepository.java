package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.BulkEmails;

@Repository
public interface BulkEmailsRepository extends JpaRepository<BulkEmails, Integer> {

}
