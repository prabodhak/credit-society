package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrePersist;
import javax.persistence.Table;

/**
 * This class represent a template to create different types of Master Account. Using this system administrator can
 * create different kind of master accounts according to their need. Currently we are providing only two master accounts Loan & Deposit. All the {@link AccountType} will be a type of {@link AccountTypeMaster}. 
 * 
 * @author Ajay Gupta
 * @since 1.0
 * 
 */

@SuppressWarnings("serial")
@Entity
@Table(name="account_type_master")
public class AccountTypeMaster extends NamedEntity {
	
	@Column(name="account_description")
	private String accountDescription;
	
	@Column(name="active", nullable=false)
	private boolean active;
	
	public AccountTypeMaster() {
		
	}

	public String getAccountDescription() {
		return accountDescription;
	}

	public void setAccountDescription(String accountDescription) {
		this.accountDescription = accountDescription;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
	@PrePersist
	private void prePersist() {
		setActive(true);
	}
}
