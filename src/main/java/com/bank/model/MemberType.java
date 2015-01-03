package com.bank.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="member_type")
public class MemberType extends BaseEntity {

	@Column(name="type")
	private String type;
	
	@Column(name="share_amount")
	private BigDecimal sharesAmount;
	
	@Column(name="membership_fee")
	private BigDecimal memberFee;
	
	@Column(name="miscellaneous_charge")
	private BigDecimal miscellaneousCharge;
	
	@Column(name="participate_in_election")
	private boolean participateInElection;
	
	@Column(name="eligible_for_voting")
	private boolean eligibleForVoting;
	
	@Column(name="eligible_lor_loan")
	private boolean eligibleForLoan;
	
	@Column(name="eligible_for_guarantor")
	private boolean eligibleforGuarantor;

	public MemberType() {
		// TODO Auto-generated constructor stub
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type.toUpperCase();
	}

	public BigDecimal getSharesAmount() {
		return sharesAmount;
	}

	public void setSharesAmount(BigDecimal sharesAmount) {
		this.sharesAmount = sharesAmount;
	}

	public BigDecimal getMemberFee() {
		return memberFee;
	}

	public void setMemberFee(BigDecimal memberFee) {
		this.memberFee = memberFee;
	}

	public BigDecimal getMiscellaneousCharge() {
		return miscellaneousCharge;
	}

	public void setMiscellaneousCharge(BigDecimal miscellaneousCharge) {
		this.miscellaneousCharge = miscellaneousCharge;
	}

	public boolean isParticipateInElection() {
		return participateInElection;
	}

	public void setParticipateInElection(boolean participateInElection) {
		this.participateInElection = participateInElection;
	}

	public boolean isEligibleForVoting() {
		return eligibleForVoting;
	}

	public void setEligibleForVoting(boolean eligibleForVoting) {
		this.eligibleForVoting = eligibleForVoting;
	}

	public boolean isEligibleForLoan() {
		return eligibleForLoan;
	}

	public void setEligibleForLoan(boolean eligibleForLoan) {
		this.eligibleForLoan = eligibleForLoan;
	}

	public boolean isEligibleforGuarantor() {
		return eligibleforGuarantor;
	}

	public void setEligibleforGuarantor(boolean eligibleforGuarantor) {
		this.eligibleforGuarantor = eligibleforGuarantor;
	}
	
}
