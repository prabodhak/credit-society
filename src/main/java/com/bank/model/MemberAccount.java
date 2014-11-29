package com.bank.model;

import java.util.Collection;
import java.util.HashSet;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.bank.utils.AddressProofDocumentType;
import com.bank.utils.IdentityProofDocumentType;

@SuppressWarnings("serial")
@Entity
@Table(name="member_account")
public class MemberAccount extends BaseEntity {

	@OneToOne
	@JoinColumn(name="member")
	private Member member;
	
	@Column(name="pan_number")
	private String panNumber;
	
	@Column(name="aadhaar_number")
	private String aadhaarNumber;
	
	@Column(name="id_proof_type")
	private IdentityProofDocumentType idType;
	
	@Column(name="address_proof_type")
	private AddressProofDocumentType addressProofType;
	
	@OneToOne
	@JoinColumn(name="account")
	private Account account;
	
	@OneToMany(cascade=CascadeType.ALL)
	private Collection<Nominee> nominees = new HashSet<Nominee>();

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
}
