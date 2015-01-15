package com.bank.model;

import javax.persistence.Entity;

@SuppressWarnings("serial")
@Entity
public class PenaltyCalculationMode extends BaseEntity {

	private String mode;

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}
}
