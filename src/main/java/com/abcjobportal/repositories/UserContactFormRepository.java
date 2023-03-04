package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserContactForm;

@Repository
public interface UserContactFormRepository extends JpaRepository<UserContactForm, Integer> {

}
