package com.bank.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

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
	
	@ElementCollection
	private List<String> memberTypes;

	@Column(name = "interest_rate")
	private BigDecimal interestRate;

	@Column(name = "interest_calculation_mode")
	private String interestCalculationMode;

	@Column(name = "pan_number_required")
	private boolean panNumberRequired;
	
	@ElementCollection
	private List<String> requiredDocuments;

	/*@Column(name = "identity_proof_required")
	private boolean identityProofRequired;

	@Column(name = "address_proof_required")
	private boolean addressProofRequired;*/
	
	@Column(name = "apply_date")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "dd/MMMM/yyyy")
	private DateTime applyDate;

	@ElementCollection
	private List<String> identityProofDocuments;

	@ElementCollection
	private List<String> addressProofDocuments;

	public AccountType() {
		// TODO Auto-generated constructor stub
	}

	public AccountTypeMaster getAccountTypeMaster() {
		return accountTypeMaster;
	}

	public void setAccountTypeMaster(AccountTypeMaster accountTypeMaster) {
		this.accountTypeMaster = accountTypeMaster;
	}

	public List<String> getMemberTypes() {
		return memberTypes;
	}

	public void setMemberTypes(List<String> memberTypes) {
		this.memberTypes = memberTypes;
	}

	public BigDecimal getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(BigDecimal interestRate) {
		this.interestRate = interestRate;
	}

	public String getInterestCalculationMode() {
		return interestCalculationMode;
	}

	public void setInterestCalculationMode(String interestCalculationMode) {
		this.interestCalculationMode = interestCalculationMode;
	}

	public boolean isPanNumberRequired() {
		return panNumberRequired;
	}

	public void setPanNumberRequired(boolean panNumberRequired) {
		this.panNumberRequired = panNumberRequired;
	}

	public List<String> getRequiredDocuments() {
		return requiredDocuments;
	}

	public void setRequiredDocuments(List<String> requiredDocuments) {
		this.requiredDocuments = requiredDocuments;
	}

	/*public boolean isIdentityProofRequired() {
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
	}*/

	public DateTime getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(DateTime applyDate) {
		this.applyDate = applyDate;
	}

	public List<String> getIdentityProofDocuments() {
		return identityProofDocuments;
	}

	public void setIdentityProofDocuments(List<String> identityProofDocuments) {
		this.identityProofDocuments = identityProofDocuments;
	}

	public List<String> getAddressProofDocuments() {
		return addressProofDocuments;
	}

	public void setAddressProofDocuments(List<String> addressProofDocuments) {
		this.addressProofDocuments = addressProofDocuments;
	}
}