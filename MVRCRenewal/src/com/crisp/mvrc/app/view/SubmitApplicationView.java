package com.crisp.mvrc.app.view;

import java.sql.Date;

public class SubmitApplicationView {

	private String applicationNo;
	private String trn;
	private String firstName;
	private String lastName;
	private int accountNo;
	private String plateNo;
	private int renewalPeriod;
	private Date newRegExpiryDate;
	private String applicationStatus;
	
	private String cardType;
	private String cardName;
	private String cardNo;
	private String expDate;
	private String cvvCode;
	
	
	
	public SubmitApplicationView() {
		// TODO Auto-generated constructor stub
	}

	public String getApplicationNo() {
		return applicationNo;
	}
	public void setApplicationNo(String applicationNo) {
		this.applicationNo = applicationNo;
	}
	
	public String getPlateNo() {
		return plateNo;
	}
	public void setPlateNo(String plateNo) {
		this.plateNo = plateNo;
	}

	
		
	public Date getNewRegExpiryDate() {
		return newRegExpiryDate;
	}
	public void setNewRegExpiryDate(Date newRegExpiryDate) {
		this.newRegExpiryDate = newRegExpiryDate;
	}
	public String getApplicationStatus() {
		return applicationStatus;
	}
	public void setApplicationStatus(String applicationStatus) {
		this.applicationStatus = applicationStatus;
	}
	public int getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}
	public int getRenewalPeriod() {
		return renewalPeriod;
	}
	public void setRenewalPeriod(int renewalPeriod) {
		this.renewalPeriod = renewalPeriod;
	}

	public String getTrn() {
		return trn;
	}

	public void setTrn(String trn) {
		this.trn = trn;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public String getCvvCode() {
		return cvvCode;
	}

	public void setCvvCode(String cvvCode) {
		this.cvvCode = cvvCode;
	}
	
	
	
	
}
