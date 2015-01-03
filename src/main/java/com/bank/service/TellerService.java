package com.bank.service;

import java.math.BigDecimal;

import com.bank.model.MemberAccount;

public interface TellerService {

	/**
	 * Deposit money in the specified account
	 * @param amount
	 */
	void deposit(MemberAccount account, BigDecimal amount);
	
	/**
	 * Withdraw money from specified account
	 * @param amount
	 */
	void withdrawal(MemberAccount account, BigDecimal amount);
	
	/**
	 * Open a new account for existing or new customer
	 */
	void accountOpening();
	
	/**
	 * 
	 */
	void printDepositeSlip();
	
	void updatePassbook(Long accountNumber);
	
	/**
	 * Transfer money from one account to another account.
	 * @param fromAccount - the account from money will be debited
	 * @param beneficiaryAccountNo - the account in which money will be credited
	 */
	void fundTransfer(Long fromAccount, Long beneficiaryAccountNo);
}
