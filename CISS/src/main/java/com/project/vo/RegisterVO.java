package com.project.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="register")
public class RegisterVO {
	
	@Id
	@Column(name="registerId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int registerId;
	

	@Column(name="companyName")
	private String companyName;
	

	@Column(name="emailId")
	private String emailId;
	
	@Column(name="companyAddress")
	private String companyAddress;
	
	@Column(name="companyContact")
	private String companyContact;
	
	@Column(name="ownerName")
	private String ownerName;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="owneremailId")
	private String owneremailId;
	
	@Column(name="ownerContact")
	private String ownerContact;
	
	
		
	@ManyToOne
	private LoginVO loginVO;



	public int getRegisterId() {
		return registerId;
	}



	public void setRegisterId(int registerId) {
		this.registerId = registerId;
	}



	public String getCompanyName() {
		return companyName;
	}



	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}



	public String getEmailId() {
		return emailId;
	}



	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}



	public String getCompanyAddress() {
		return companyAddress;
	}



	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}



	public String getCompanyContact() {
		return companyContact;
	}



	public void setCompanyContact(String companyContact) {
		this.companyContact = companyContact;
	}



	public String getOwnerName() {
		return ownerName;
	}



	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getOwneremailId() {
		return owneremailId;
	}



	public void setOwneremailId(String owneremailId) {
		this.owneremailId = owneremailId;
	}



	public String getOwnerContact() {
		return ownerContact;
	}



	public void setOwnerContact(String ownerContact) {
		this.ownerContact = ownerContact;
	}



	public LoginVO getLoginVO() {
		return loginVO;
	}



	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}


	
	
}
