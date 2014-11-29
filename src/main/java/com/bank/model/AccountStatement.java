package com.bank.model;

import java.math.BigDecimal;

import org.joda.time.DateTime;

public class AccountStatement {
	
	DateTime date;
	String narration;
	String refNo;
	BigDecimal withdrawal;
	BigDecimal deposite;
	BigDecimal closingBalance;
	
	public AccountStatement() {
		// TODO Auto-generated constructor stub
	}
}
