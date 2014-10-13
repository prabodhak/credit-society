package com.bank.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class MemberAccount extends Member {

	@Column(name="pan_number")
	private String panNumber;
	
	@OneToMany(mappedBy="member", fetch=FetchType.LAZY, cascade=CascadeType.PERSIST)
	private Set<Account> accounts;

	public String getPanNumber() {
		return panNumber;
	}

	public Set<Account> getAccounts() {
		return accounts;
	}

	public void setPanNumber(String panNumber) {
		this.panNumber = panNumber;
	}

	public void setAccounts(Set<Account> accounts) {
		this.accounts = accounts;
	}
}
