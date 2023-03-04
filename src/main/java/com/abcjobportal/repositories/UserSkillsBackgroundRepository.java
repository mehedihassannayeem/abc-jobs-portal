package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserSkillsBackground;

@Repository
public interface UserSkillsBackgroundRepository extends JpaRepository<UserSkillsBackground, Integer> {

	// fetching a user's skill backgrounds
	@Query("SELECT usb FROM UserSkillsBackground usb WHERE usb.user_id=:id")
	public List<UserSkillsBackground> getUserProBackground(@Param("id") int id);

}
