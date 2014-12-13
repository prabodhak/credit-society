package com.bank.model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="member_type")
public class MemberType extends BaseEntity {

	private char type;
	private BigDecimal sharesAmount;
	private BigDecimal memberFee;
	private BigDecimal miscellaneousCharge;
	private boolean participateInElection;
	private boolean eligibleForVoting;
	private boolean eligibleForLoan;
	private boolean eligibleforGuarantor;

	public char getType() {
		return type;
	}

	public void setType(char type) {
		this.type = type;
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
