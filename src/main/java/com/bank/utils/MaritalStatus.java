package com.bank.utils;

public enum MaritalStatus {

	UN_MARRIED("Unmarried"),
	MARRIED("Married"),
	SEPERATED("Seperated"),
	DIVORCED("Divorced"),
	WIDOWED("Widowed");
	
	private String status;
	
	private MaritalStatus(String status) {
		this.status = status;
	}
	
	public String getStatus() {
		return status;
	}
	
	public String valueOf() {
		return status;
	}
}
