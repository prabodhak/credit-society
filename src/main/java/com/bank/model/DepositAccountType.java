package com.bank.model;

import java.math.BigDecimal;

import javax.persistence.Column;

@SuppressWarnings("serial")
public class DepositAccountType extends AccountType {

	@Column(name = "minimum_balance")
	private BigDecimal minimumBalance;
	
	private BigDecimal debitCashLimit;
	
	private BigDecimal creditCashLimit;

	public BigDecimal getMinimumBalance() {
		return minimumBalance;
	}

	public void setMinimumBalance(BigDecimal minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	public BigDecimal getDebitCashLimit() {
		return debitCashLimit;
	}

	public void setDebitCashLimit(BigDecimal debitCashLimit) {
		this.debitCashLimit = debitCashLimit;
	}

	public BigDecimal getCreditCashLimit() {
		return creditCashLimit;
	}

	public void setCreditCashLimit(BigDecimal creditCashLimit) {
		this.creditCashLimit = creditCashLimit;
	}
}
