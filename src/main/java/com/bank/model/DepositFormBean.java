package com.bank.model;

import java.math.BigDecimal;

import org.joda.time.DateTime;

public class DepositFormBean {
	private Long accountNumber;
	private String name;
	private DateTime date;
	private String depositorName;
	private String depositorContact;
	private String panNumber;
	private BigDecimal amount;
}
