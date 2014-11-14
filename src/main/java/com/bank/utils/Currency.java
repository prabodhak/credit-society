package com.bank.utils;

public enum Currency {
	INDIAN_RUPEE("INR"),
	NEPALESE_RUPEE("NPR"),
	SRI_LANKAN_RUPEE("LKR"),
	PAKISTANI_RUPEE("PKR"),
	UNITED_ARAB_EMIRATES_DIRHAM("AED");
	
	private String code;
	
	private Currency(String code) {
		this.code = code;
	}
	
	public String code() {
		return code;
	}
}
