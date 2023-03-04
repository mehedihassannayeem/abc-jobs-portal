package com.abcjobportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.abcjobportal.entities.UserReviews;

@Repository
public interface UserReviewsRepository extends JpaRepository<UserReviews, Integer> {

	// getting displayable reviews
	@Query("SELECT ur FROM UserReviews ur WHERE ur.user_review_display = 1")
	public List<UserReviews> getReviews();

	// setting the review as displayable
	@Transactional
	@Modifying
	@Query("UPDATE UserReviews ur SET ur.user_review_display=:dr WHERE ur.user_reviews_serial=:id")
	public void showReviews(@Param("dr") int yes, @Param("id") int user_id);

	// setting the review as not displayable
	@Transactional
	@Modifying
	@Query("UPDATE UserReviews ur SET ur.user_review_display=:dr WHERE ur.user_reviews_serial=:id")
	public void hideReviews(@Param("dr") int no, @Param("id") int user_id);

}
