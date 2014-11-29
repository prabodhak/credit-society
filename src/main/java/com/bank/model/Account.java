package com.bank.model;

import java.math.BigDecimal;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.joda.time.DateTime;

import com.bank.utils.InterestCalculationMode;
import com.bank.utils.StatementFrequency;

/**
 * 
 * @author Ajay
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name="account")
public class Account extends BaseEntity {

	/*
	 * Account number.
	 */
	@Column(name="account_number", unique=true)
	private Long accountNumber;
	
	/*
	 * 
	 */
	private AccountType accountType;
	
	/*
	 * Date on which this account opened.
	 */
	private DateTime openingDate;
	
	/*
	 * Maximum limit for cash deposit in this account.
	 */	
	private BigDecimal cashDebitLimit;
	
	/*
	 * Maximum limit for cash withdrawal in this account.
	 */
	private BigDecimal cashCreditLimit;
	
	/*
	 * Interest rate for this account.
	 */
	private BigDecimal interestRate;
	
	/*
	 * List of nominess for this account. More than one nominee can be possible for one account.
	 */
	private Set<Nominee> nominees;
	
	/*
	 * 
	 */
	private boolean eStatementRequired;
	
	/*
	 * Passbook is required for this account or not. In case of  
	 */
	private boolean passbookRequired;
	
	/*
	 * When the statement will be generated for this account and send to the customer.
	 */
	private StatementFrequency statementFrequency;
	
	/*
	 * When the interest should be calculated for this account.
	 */
	private InterestCalculationMode interestCalculationMode;
	
	/*
	 * Total amount in the account (availableBalance + unclearedFunds) 
	 */
	private BigDecimal accountBalance;
	/*
	 * Amount which you can withdraw right now
	 */
	private BigDecimal availableBalance;
	
	/*
	 * Amount which is pending for some kind of approval like cheque clearance
	 */
	private BigDecimal unclearedFunds;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}
}
