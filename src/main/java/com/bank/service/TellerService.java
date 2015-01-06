package com.bank.service;

import java.math.BigDecimal;

import com.bank.exception.CashCerditExceedsException;
import com.bank.exception.InSufficientBalanaceException;

public interface TellerService {

	/**
	 * Deposit money in the specified account
	 * 
	 * @param amount
	 */
	void deposit(Long accountNo, BigDecimal amount);
	
	/**
	 * Deposit cash money in the specified account
	 * 
	 * @param amount
	 */
	void cashDeposit(Long accountNo, BigDecimal amount) throws CashCerditExceedsException;

	/**
	 * Withdraw money from specified account
	 * 
	 * @param amount
	 */
	void withdrawal(Long accountNo, BigDecimal amount)
			throws InSufficientBalanaceException;

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
	 * 
	 * @param fromAccount
	 *            - the account from money will be debited
	 * @param beneficiaryAccountNo
	 *            - the account in which money will be credited
	 */
	void fundTransfer(Long fromAccount, Long beneficiaryAccountNo,
			BigDecimal amount) throws InSufficientBalanaceException;

	/**
	 * Get account holder name, account type, branch code, bod, and account
	 * balance
	 * 
	 * @param accountNo
	 */
	void getAccountInfo(Long accountNo);
}
