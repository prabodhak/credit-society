package com.bank.model;

import java.math.BigDecimal;

import javax.persistence.Column;

import org.hibernate.validator.constraints.NotEmpty;

@SuppressWarnings("serial")
public class LoanAccountType extends AccountType {

	private BigDecimal maximumLoanAmount;
	private int numberOfInstallement;
	private BigDecimal penaltyRate;
	private BigDecimal buildingFund;
	private BigDecimal serviceCharge;
	private BigDecimal miscellaneousCharge;
	@Column(name = "granter_required")
	@NotEmpty
	private boolean granterRequired;

	public LoanAccountType() {
		// TODO Auto-generated constructor stub
	}
	
	public BigDecimal getMaximumLoanAmount() {
		return maximumLoanAmount;
	}

	public void setMaximumLoanAmount(BigDecimal maximumLoanAmount) {
		this.maximumLoanAmount = maximumLoanAmount;
	}

	public int getNumberOfInstallement() {
		return numberOfInstallement;
	}

	public void setNumberOfInstallement(int numberOfInstallement) {
		this.numberOfInstallement = numberOfInstallement;
	}

	public BigDecimal getPenaltyRate() {
		return penaltyRate;
	}

	public void setPenaltyRate(BigDecimal penaltyRate) {
		this.penaltyRate = penaltyRate;
	}

	public BigDecimal getBuildingFund() {
		return buildingFund;
	}

	public void setBuildingFund(BigDecimal buildingFund) {
		this.buildingFund = buildingFund;
	}

	public BigDecimal getServiceCharge() {
		return serviceCharge;
	}

	public void setServiceCharge(BigDecimal serviceCharge) {
		this.serviceCharge = serviceCharge;
	}

	public BigDecimal getMiscellaneousCharge() {
		return miscellaneousCharge;
	}

	public void setMiscellaneousCharge(BigDecimal miscellaneousCharge) {
		this.miscellaneousCharge = miscellaneousCharge;
	}

	public boolean isGranterRequired() {
		return granterRequired;
	}

	public void setGranterRequired(boolean granterRequired) {
		this.granterRequired = granterRequired;
	}

}
