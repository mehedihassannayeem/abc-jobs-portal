package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserNewsfeedPosts;

@Repository
public interface UserNewsfeedPostsRepository extends JpaRepository<UserNewsfeedPosts, Integer> {

	// user personal posts
	@Query("SELECT unp FROM UserNewsfeedPosts unp WHERE unp.user_id=:uid")
	List<UserNewsfeedPosts> getPersonalPosts(@Param("uid") int id);

}
