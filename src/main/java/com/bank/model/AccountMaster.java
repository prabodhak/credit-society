package com.bank.model;

import org.hibernate.validator.constraints.NotEmpty;

import com.bank.utils.AccountType;
import com.bank.utils.InterestCalculationMode;

/**
 * This class represent a template to create different types of Account. Using this administrator can
 * create different kind of accounts according to their need.
 * 
 * @author Ajay
 * 
 */
public class AccountMaster extends NamedEntity {

	@NotEmpty
	private AccountType accountType;
	
	@NotEmpty
	private double interestRate;
	
	@NotEmpty
	private double minimumBalance;
	
	@NotEmpty
	private InterestCalculationMode interestCalculationMode;
	
	@NotEmpty
	private boolean GranterRequired;
	
	@NotEmpty
	private boolean PanNumberRequired;
	
	@NotEmpty
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
