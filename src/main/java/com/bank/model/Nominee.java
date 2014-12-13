package com.bank.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Simple JavaBean domain object representing a nominee for a particular
 * account. A nominee must be associated with some account.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "nominee")
public class Nominee extends Person {

	@Column(name = "relationship")
	private Relation relationship;

	@Column(name = "share")
	private BigDecimal sharePercentage;
	
	@ManyToOne
	private Account account;

	public Nominee() {
		// TODO Auto-generated constructor stub
	}

	public Relation getRelationship() {
		return relationship;
	}

	public void setRelationship(Relation relationship) {
		this.relationship = relationship;
	}

	public BigDecimal getSharePercentage() {
		return sharePercentage;
	}

	public void setSharePercentage(BigDecimal sharePercentage) {
		this.sharePercentage = sharePercentage;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}
}
