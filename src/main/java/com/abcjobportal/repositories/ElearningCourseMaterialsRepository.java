package com.abcjobportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.ElearningCourseMaterials;

@Repository
public interface ElearningCourseMaterialsRepository extends JpaRepository<ElearningCourseMaterials, Integer> {

}
