package com.bank.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

import com.bank.utils.InterestCalculationMode;

/**
 * Represent JavaBean domain object for generic account. This class represent a
 * template to create different types of society specific accounts. Using this
 * system administrator can create different kind of accounts according to their
 * need.
 * 
 * @author Ajay Gupta
 * @since 1.0
 * 
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "account_type")
public class AccountType extends NamedEntity {

	@OneToOne
	@JoinColumn(name = "account_type_master")
	private AccountTypeMaster accountTypeMaster;

	@Column(name = "interest_rate")
	@NotEmpty
	private BigDecimal interestRate;

	@Column(name = "minimum_balance")
	@NotEmpty
	private BigDecimal minimumBalance;

	@Column(name = "interest_calculation_mode")
	@NotEmpty
	private InterestCalculationMode interestCalculationMode;

	@Column(name = "granter_required")
	@NotEmpty
	private boolean granterRequired;

	@Column(name = "pan_number_required")
	@NotEmpty
	private boolean panNumberRequired;

	@Column(name = "identity_proof_required")
	@NotEmpty
	private boolean identityProofRequired;

	@Column(name = "address_proof_required")
	@NotEmpty
	private boolean addressProofRequired;

	@OneToMany()
	private List<VerificationDocument> identityProofDocuments;

	@OneToMany
	private List<VerificationDocument> addressProofDocuments;

	public AccountType() {
		// TODO Auto-generated constructor stub
	}

	public AccountTypeMaster getAccountTypeMaster() {
		return accountTypeMaster;
	}

	public void setAccountTypeMaster(AccountTypeMaster accountTypeMaster) {
		this.accountTypeMaster = accountTypeMaster;
	}

	public BigDecimal getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(BigDecimal interestRate) {
		this.interestRate = interestRate;
	}

	public BigDecimal getMinimumBalance() {
		return minimumBalance;
	}

	public void setMinimumBalance(BigDecimal minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	public InterestCalculationMode getInterestCalculationMode() {
		return interestCalculationMode;
	}

	public void setInterestCalculationMode(
			InterestCalculationMode interestCalculationMode) {
		this.interestCalculationMode = interestCalculationMode;
	}

	public boolean isGranterRequired() {
		return granterRequired;
	}

	public void setGranterRequired(boolean granterRequired) {
		this.granterRequired = granterRequired;
	}

	public boolean isPanNumberRequired() {
		return panNumberRequired;
	}

	public void setPanNumberRequired(boolean panNumberRequired) {
		this.panNumberRequired = panNumberRequired;
	}

	public boolean isIdentityProofRequired() {
		return identityProofRequired;
	}

	public void setIdentityProofRequired(boolean identityProofRequired) {
		this.identityProofRequired = identityProofRequired;
	}

	public boolean isAddressProofRequired() {
		return addressProofRequired;
	}

	public void setAddressProofRequired(boolean addressProofRequired) {
		this.addressProofRequired = addressProofRequired;
	}

	public List<VerificationDocument> getIdentityProofDocuments() {
		return identityProofDocuments;
	}

	public void setIdentityProofDocuments(
			List<VerificationDocument> identityProofDocuments) {
		this.identityProofDocuments = identityProofDocuments;
	}

	public List<VerificationDocument> getAddressProofDocuments() {
		return addressProofDocuments;
	}

	public void setAddressProofDocuments(
			List<VerificationDocument> addressProofDocuments) {
		this.addressProofDocuments = addressProofDocuments;
	}
}