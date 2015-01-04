package com.bank.model;

import java.math.BigDecimal;

public class WithdrawalForm {
	
	private Long accountNo;
	
	private BigDecimal amount;

	public Long getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(Long accountNo) {
		this.accountNo = accountNo;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

}
