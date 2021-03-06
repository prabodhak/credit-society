package com.bank.model;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.bank.utils.AddressProofDocumentType;
import com.bank.utils.IdentityProofDocumentType;

/**
 * Simple JavaBean domain object representing a member account. This class
 * contains the information of a member and his/her all account specific data.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "member_account")
public class MemberAccount extends BaseEntity {

	@OneToOne
	@JoinColumn(name = "member")
	private Member member;

	@Column(name = "pan_number")
	private String panNumber;

	@Column(name = "aadhaar_number")
	private String aadhaarNumber;

	@Column(name = "id_proof_type")
	private IdentityProofDocumentType idType;

	@Column(name = "address_proof_type")
	private AddressProofDocumentType addressProofType;

	@OneToOne
	@JoinColumn(name = "account")
	private Account account;

	@OneToMany(cascade = CascadeType.ALL)
	private Collection<Nominee> nominees = new HashSet<Nominee>();
	
	@ElementCollection
	@JoinTable(name = "member_other_account_details")
	private Set<OtherAccountDetails> otherAccountDetails;
	
	@Column(name="loan_locked")
	private boolean loanLocked;
	
	@Column(name = "special_instruction")
	private String specialInstruction;

	public MemberAccount() {
		// TODO Auto-generated constructor stub
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public String getPanNumber() {
		return panNumber;
	}

	public void setPanNumber(String panNumber) {
		this.panNumber = panNumber;
	}

	public String getAadharNumber() {
		return aadhaarNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadhaarNumber = aadharNumber;
	}

	public IdentityProofDocumentType getIdType() {
		return idType;
	}

	public void setIdType(IdentityProofDocumentType idType) {
		this.idType = idType;
	}

	public AddressProofDocumentType getAddressProofType() {
		return addressProofType;
	}

	public void setAddressProofType(AddressProofDocumentType addressProofType) {
		this.addressProofType = addressProofType;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Collection<Nominee> getNominees() {
		return nominees;
	}

	public void setNominees(Collection<Nominee> nominees) {
		this.nominees = nominees;
	}

	public Set<OtherAccountDetails> getOtherAccountDetails() {
		return otherAccountDetails;
	}

	public void setOtherAccountDetails(
			Set<OtherAccountDetails> otherAccountDetails) {
		this.otherAccountDetails = otherAccountDetails;
	}
	
	public boolean isLoanLocked() {
		return loanLocked;
	}

	public void setLoanLocked(boolean loanLocked) {
		this.loanLocked = loanLocked;
	}

	public String getSpecialInstruction() {
		return specialInstruction;
	}

	public void setSpecialInstruction(String specialInstruction) {
		this.specialInstruction = specialInstruction;
	}
}
