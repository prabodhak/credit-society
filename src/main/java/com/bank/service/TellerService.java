package com.bank.service;

import java.math.BigDecimal;

public interface TellerService {

	/**
	 * Deposit money in the specified account
	 * @param amount
	 */
	void deposit(BigDecimal amount);
	
	/**
	 * Withdraw money from specified account
	 * @param amount
	 */
	void withdrawal(BigDecimal amount);
	
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
