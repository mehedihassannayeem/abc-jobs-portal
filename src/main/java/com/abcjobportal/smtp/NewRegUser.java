package com.abcjobportal.smtp;

public class NewRegUser {

	private String regUserName;
	private String regUserEmail;
	private String regUserOTP;

	public NewRegUser(String regUserName, String regUserEmail, String regUserOTP) {
		super();
		this.regUserName = regUserName;
		this.regUserEmail = regUserEmail;
		this.regUserOTP = regUserOTP;
	}

	public String getRegUserName() {
		return regUserName;
	}

	public void setRegUserName(String regUserName) {
		this.regUserName = regUserName;
	}

	public String getRegUserEmail() {
		return regUserEmail;
	}

	public void setRegUserEmail(String regUserEmail) {
		this.regUserEmail = regUserEmail;
	}

	public String getRegUserOTP() {
		return regUserOTP;
	}

	public void setRegUserOTP(String regUserOTP) {
		this.regUserOTP = regUserOTP;
	}

}
