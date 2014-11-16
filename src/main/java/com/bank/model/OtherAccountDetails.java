package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class OtherAccountDetails {

	@Column(name="bank_account_number")
	private String bankAccountNumber;
	
	@Column(name="bank_name")
	private String bankName;
	
	@Column(name="branch_address")
	private String branchAddress;
	
	@Column(name="account_type")
	private String accountType;

	public String getBankAccountNumber() {
		return bankAccountNumber;
	}

	public void setBankAccountNumber(String bankAccountNumber) {
		this.bankAccountNumber = bankAccountNumber;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBranchAddress() {
		return branchAddress;
	}

	public void setBranchAddress(String branchAddress) {
		this.branchAddress = branchAddress;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
}
