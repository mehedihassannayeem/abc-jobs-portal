package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcjobportal.entities.UserNewsfeedPostCommnets;

@Repository
public interface UserNewsfeedPostCommnetsRepository extends JpaRepository<UserNewsfeedPostCommnets, Integer> {

	// post comments
	@Query("SELECT unfpc FROM UserNewsfeedPostCommnets unfpc WHERE unfpc.post_id=:pid")
	List<UserNewsfeedPostCommnets> getPostCommnets(@Param("pid") int id);

}
