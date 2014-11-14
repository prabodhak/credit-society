package com.bank.utils;

/**
 * Male, Female, and Transgender.
 * Used to customize Account messages (e.g. he or she usage) and to choose the default profile picture.
 * @author Ajay
 *
 */

public enum Gender {

	MALE ('M'), FEMALE ('F');
	
	private char code;
	
	private Gender(char code) { 
		this.code = code;
	}
	
	public char code() {
		return code;
	}

	public static Gender valueOf(char charAt) {
		if (charAt == 'M') {
			return Gender.MALE;
		} else {
			return Gender.FEMALE;
		}
	}
}
