package com.abcjobportal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobportal.entities.Admins;
import com.abcjobportal.repositories.AdminsRepository;

@Service
public class AdminsService {
	@Autowired
	private AdminsRepository adminsRepository;

	// creating an admin
	public void createAdmin(Admins admin) {
		this.adminsRepository.save(admin);
	}

	// fetching all admins info
	public List<Admins> getAllAdmins() {
		return this.adminsRepository.findAll();
	}

	// deleting an admin
	public void deleteAdmin(int id) {
		this.adminsRepository.deleteById(id);
	}

	// getting a perticular admin
	public Admins getAdmin(int id) {
		return this.adminsRepository.findById(id).get();
	}

	public Admins getLogAdmin(String admin_email, String admin_password) {
		return this.adminsRepository.getLoginInfo(admin_email, admin_password);

	}
}
