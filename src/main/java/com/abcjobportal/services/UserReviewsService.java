package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserReviews;
import com.abcjobportal.repositories.UserReviewsRepository;

@Service
public class UserReviewsService {

	@Autowired
	private UserReviewsRepository userReviewsRepository;

	// fetching all the reviews
	public List<UserReviews> getAllReviews() {
		return this.userReviewsRepository.findAll();
	}

	// fetching displayable reviews
	public List<UserReviews> getDisplayAbleAllReviews() {
		return this.userReviewsRepository.getReviews();
	}

	// setting review as displaybale
	public void displayUserReview(int id) {
		this.userReviewsRepository.showReviews(1, id);

	}

	// setting review as not displayable
	public void hideUserReview(int id) {
		this.userReviewsRepository.hideReviews(0, id);

	}

	// deleting the user review
	public void deleteUserReview(int id) {
		this.userReviewsRepository.deleteById(id);

	}
}
