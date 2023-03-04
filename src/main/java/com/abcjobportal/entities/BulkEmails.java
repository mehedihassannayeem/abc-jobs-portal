package com.abcjobportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bulk_emails")
public class BulkEmails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bulk_email_serial;
	private String admin_name;
	private String invited_email_address_1;
	private String invited_email_address_2;
	private String invited_email_address_3;
	private String invited_email_address_4;
	private String invited_email_address_5;
	private String invited_at;

	public int getBulk_email_serial() {
		return bulk_email_serial;
	}

	public void setBulk_email_serial(int bulk_email_serial) {
		this.bulk_email_serial = bulk_email_serial;
	}

	public String getInvited_email_address_1() {
		return invited_email_address_1;
	}

	public void setInvited_email_address_1(String invited_email_address_1) {
		this.invited_email_address_1 = invited_email_address_1;
	}

	public String getInvited_email_address_2() {
		return invited_email_address_2;
	}

	public void setInvited_email_address_2(String invited_email_address_2) {
		this.invited_email_address_2 = invited_email_address_2;
	}

	public String getInvited_email_address_3() {
		return invited_email_address_3;
	}

	public void setInvited_email_address_3(String invited_email_address_3) {
		this.invited_email_address_3 = invited_email_address_3;
	}

	public String getInvited_email_address_4() {
		return invited_email_address_4;
	}

	public void setInvited_email_address_4(String invited_email_address_4) {
		this.invited_email_address_4 = invited_email_address_4;
	}

	public String getInvited_email_address_5() {
		return invited_email_address_5;
	}

	public void setInvited_email_address_5(String invited_email_address_5) {
		this.invited_email_address_5 = invited_email_address_5;
	}

	public String getInvited_at() {
		return invited_at;
	}

	public void setInvited_at(String invited_at) {
		this.invited_at = invited_at;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

}
