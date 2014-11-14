package com.bank.model;

import java.util.Collection;
import java.util.HashSet;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.bank.utils.AddressProofDocumentType;
import com.bank.utils.IdentityProofDocumentType;

@Entity
@Table(name="member_account")
public class MemberAccount extends BaseEntity {

	@OneToOne
	private Member member;
	
	@Column(name="pan_number")
	private String panNumber;
	
	@Column(name="aadhar_number")
	private String aadharNumber;
	
	@Column(name="id_proof_type")
	private IdentityProofDocumentType idType;
	
	@Column(name="address_proof_type")
	private AddressProofDocumentType addressProofType;
	
	@OneToOne
	private Account account;
	
	@OneToMany
	private Collection<Nominee> nominees = new HashSet<Nominee>();

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
}
