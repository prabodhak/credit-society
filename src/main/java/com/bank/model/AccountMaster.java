package com.bank.model;

import com.bank.utils.AccountType;
import com.bank.utils.InterestCalculationMode;

/**
 * This class represent Account creation class. Using this administrator can
 * create different kind of accounts according to their need.
 * 
 * @author Ajay
 * 
 */
public class AccountMaster extends NamedEntity {

	private AccountType accountType;
	private double interestRate;
	private double minimumBalance;
	private InterestCalculationMode interestCalculationMode;
	private boolean GranterRequired;
	private boolean PanNumberRequired;
	private boolean addressProofRequired;

	public AccountType getAccountType() {
		return accountType;
	}

	public void setAccountType(AccountType accountType) {
		this.accountType = accountType;
	}

	public double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}

	public double getMinimumBalance() {
		return minimumBalance;
	}

	public void setMinimumBalance(double minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	public InterestCalculationMode getInterestCalculationMode() {
		return interestCalculationMode;
	}

	public void setInterestCalculationMode(InterestCalculationMode interestCalculationMode) {
		this.interestCalculationMode = interestCalculationMode;
	}

	public boolean isGranterRequired() {
		return GranterRequired;
	}

	public void setGranterRequired(boolean granterRequired) {
		GranterRequired = granterRequired;
	}

	public boolean isPanNumberRequired() {
		return PanNumberRequired;
	}

	public void setPanNumberRequired(boolean panNumberRequired) {
		PanNumberRequired = panNumberRequired;
	}

	public boolean isAddressProofRequired() {
		return addressProofRequired;
	}

	public void setAddressProofRequired(boolean addressProofRequired) {
		this.addressProofRequired = addressProofRequired;
	}

}
