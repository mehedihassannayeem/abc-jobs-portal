package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserProfessionalBackground;

@Repository
public interface UserProfessionalBackgroundRepository extends JpaRepository<UserProfessionalBackground, Integer> {

	// fetching a user's professional backgrounds
	@Query("SELECT upb FROM UserProfessionalBackground upb WHERE upb.user_id=:id")
	public List<UserProfessionalBackground> getUserProBackground(@Param("id") int id);

}
