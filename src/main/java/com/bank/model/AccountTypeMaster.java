package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author Ajay
 *
 */

@Entity
@Table(name="account_type_master")
/*@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE, region="AccountType")*/
public class AccountTypeMaster extends BaseEntity {

	@Column(name="account_type")
	@NotEmpty
	private String accountType;
	
	public AccountTypeMaster() {
		
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
}
