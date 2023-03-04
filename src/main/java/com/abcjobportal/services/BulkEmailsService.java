package com.abcjobportal.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.BulkEmails;
import com.abcjobportal.repositories.BulkEmailsRepository;

@Service
public class BulkEmailsService {

	@Autowired
	private BulkEmailsRepository bulkEmailsRepository;

	// sending an email to the user
	public void inviteUser(BulkEmails bulkEmails) {

		LocalDateTime myDateObj = LocalDateTime.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		String formattedDate = myDateObj.format(myFormatObj);
		bulkEmails.setInvited_at(formattedDate);

		this.bulkEmailsRepository.save(bulkEmails);

	}

	// fetching all the sent emails from the database
	public List<BulkEmails> getAllEmails() {

		return this.bulkEmailsRepository.findAll();
	}

	// fetching all the sent emails from the database
	public BulkEmails getSentEmails(int id) {
		return this.bulkEmailsRepository.findById(id).get();
	}

	// deleting sent emails
	public void deleteSentEmails(int id) {
		this.bulkEmailsRepository.deleteById(id);
	}
}
