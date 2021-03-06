package com.bank.model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.joda.time.DateTime;

import com.bank.utils.InterestCalculationMode;
import com.bank.utils.StatementFrequency;

/**
 * Simple JavaBean domain object representing a member's account.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name="account")
@NamedQueries({
	@NamedQuery(name="Account.findByAccountNo",
				query="SELECT a FROM Account a WHERE a.accountNumber = :accountNumber")
})
public class Account extends BaseEntity {

	/*
	 * Account number.
	 */
	@Column(name="account_number", unique=true)
	private Long accountNumber;
	
	/*
	 * Tell the member information of this account
	 */
	private Member member;
	
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
	@OneToMany(mappedBy="account")
	private Set<Nominee> nominees = new HashSet<Nominee>();
	
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

	public Long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(Long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public AccountType getAccountType() {
		return accountType;
	}

	public void setAccountType(AccountType accountType) {
		this.accountType = accountType;
	}

	public DateTime getOpeningDate() {
		return openingDate;
	}

	public void setOpeningDate(DateTime openingDate) {
		this.openingDate = openingDate;
	}

	public BigDecimal getCashDebitLimit() {
		return cashDebitLimit;
	}

	public void setCashDebitLimit(BigDecimal cashDebitLimit) {
		this.cashDebitLimit = cashDebitLimit;
	}

	public BigDecimal getCashCreditLimit() {
		return cashCreditLimit;
	}

	public void setCashCreditLimit(BigDecimal cashCreditLimit) {
		this.cashCreditLimit = cashCreditLimit;
	}

	public BigDecimal getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(BigDecimal interestRate) {
		this.interestRate = interestRate;
	}

	public Set<Nominee> getNominees() {
		return nominees;
	}

	public void setNominees(Set<Nominee> nominees) {
		this.nominees = nominees;
	}

	public boolean iseStatementRequired() {
		return eStatementRequired;
	}

	public void seteStatementRequired(boolean eStatementRequired) {
		this.eStatementRequired = eStatementRequired;
	}

	public boolean isPassbookRequired() {
		return passbookRequired;
	}

	public void setPassbookRequired(boolean passbookRequired) {
		this.passbookRequired = passbookRequired;
	}

	public StatementFrequency getStatementFrequency() {
		return statementFrequency;
	}

	public void setStatementFrequency(StatementFrequency statementFrequency) {
		this.statementFrequency = statementFrequency;
	}

	public InterestCalculationMode getInterestCalculationMode() {
		return interestCalculationMode;
	}

	public void setInterestCalculationMode(
			InterestCalculationMode interestCalculationMode) {
		this.interestCalculationMode = interestCalculationMode;
	}

	public BigDecimal getAccountBalance() {
		return accountBalance;
	}

	public void setAccountBalance(BigDecimal accountBalance) {
		this.accountBalance = accountBalance;
	}

	public BigDecimal getAvailableBalance() {
		return availableBalance;
	}

	public void setAvailableBalance(BigDecimal availableBalance) {
		this.availableBalance = availableBalance;
	}

	public BigDecimal getUnclearedFunds() {
		return unclearedFunds;
	}

	public void setUnclearedFunds(BigDecimal unclearedFunds) {
		this.unclearedFunds = unclearedFunds;
	}

	@Override
	public int hashCode() {
		
		int hash = 7;
		hash = 89 * hash + (this.accountNumber != null ? this.accountNumber.hashCode() : 0);
		return hash;
	}
	
	@Override
	public boolean equals(Object object) {
		/*
		 * If it is same object then return true.
		 */
		if(object == this) {
			return true;
		}
		
		/*
		 * If the object is null or not an account then return false. 
		 */
		if(object == null || object.getClass() != this.getClass()) {
			return false;
		}
		
		/*
		 * If account number is same of both account object then return true.
		 */
		Account account = (Account) object;
		return account.getAccountNumber().equals(accountNumber);
	}
}
