package com.bank.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

import com.bank.utils.AddressProofDocumentType;
import com.bank.utils.IdentityProofDocumentType;

public class MemberAccount extends Member {

	@Column(name="pan_number")
	private String panNumber;
	
	@Column(name="aadhar_number")
	private String aadharNumber;
	
	@Column(name="id_proof_type")
	private IdentityProofDocumentType idType;
	
	@Column(name="address_proof_type")
	private AddressProofDocumentType addressProofType;
	
	@OneToMany(mappedBy="member", fetch=FetchType.LAZY, cascade=CascadeType.PERSIST)
	private Set<Account> accounts;

	public String getPanNumber() {
		return panNumber;
	}

	public void setPanNumber(String panNumber) {
		this.panNumber = panNumber;
	}
	
	public String getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
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

	public Set<Account> getAccounts() {
		return accounts;
	}
	
	public void setAccounts(Set<Account> accounts) {
		this.accounts = accounts;
	}
}
