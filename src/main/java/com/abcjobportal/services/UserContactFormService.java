package com.abcjobportal.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.UserContactForm;
import com.abcjobportal.repositories.UserContactFormRepository;

@Service
public class UserContactFormService {

	@Autowired
	private UserContactFormRepository userContactFormRepository;

	// creating contact form
	public void createContactForm(UserContactForm userContactForm) {

		if (userContactForm.getResponse_taken_by() == null) {
			this.userContactFormRepository.save(userContactForm);
		} else {
			LocalDateTime myDateObj = LocalDateTime.now();
			DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
			String formattedDate = myDateObj.format(myFormatObj);
			userContactForm.setResponse_taken_on(formattedDate);

			this.userContactFormRepository.save(userContactForm);
		}

	}

	// fetching all contact form
	public List<UserContactForm> getAllContactForms() {
		return this.userContactFormRepository.findAll();
	}

	// fetching a particular contact form
	public UserContactForm getContactForm(int id) {
		return this.userContactFormRepository.findById(id).get();
	}

	// deleting contact form
	public void deleteContactForm(int id) {
		this.userContactFormRepository.deleteById(id);
	}

}
