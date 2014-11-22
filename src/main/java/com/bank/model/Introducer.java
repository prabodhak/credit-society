package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="introducer")
public class Introducer extends NamedEntity {

	@Column(name="account_number")
	private Long accountNumber;
	
	@Column(name="mobile")
	private String mobile;

	public Introducer() {
		// TODO Auto-generated constructor stub
	}
	
	public Long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(Long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
}
