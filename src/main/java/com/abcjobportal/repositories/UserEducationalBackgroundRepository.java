package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserEducationalBackground;

@Repository
public interface UserEducationalBackgroundRepository extends JpaRepository<UserEducationalBackground, Integer> {

	// fetching a user's educational backgrounds
	@Query("SELECT ueb FROM UserEducationalBackground ueb WHERE ueb.user_id=:id")
	public List<UserEducationalBackground> getUserEduBackground(@Param("id") int id);

}
