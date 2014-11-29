package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.joda.time.DateTime;

/**
 * 
 * @author Ajay
 *
 */

@SuppressWarnings("serial")
@Entity
@Table(name="transaction")
public class Transaction extends BaseEntity {

	@Column(name="transaction_id", unique=true)
	private Long transactionId;
	
	private DateTime transactionDate;
	
	@Column(name="narration")
	private String narration;
	
	public Transaction() {
		// TODO Auto-generated constructor stub
	}

	public Long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(Long transactionId) {
		this.transactionId = transactionId;
	}

	public DateTime getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(DateTime transactionDate) {
		this.transactionDate = transactionDate;
	}

	public String getNarration() {
		return narration;
	}

	public void setNarration(String narration) {
		this.narration = narration;
	}
}
