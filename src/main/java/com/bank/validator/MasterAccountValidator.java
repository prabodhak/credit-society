package com.bank.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bank.model.MasterAccount;

public class MasterAccountValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	public void validate(Object target, Errors errors) {
		MasterAccount masterAccount = (MasterAccount) target;
		if(masterAccount.getInterestRate() < 0) {
		}
	}

}
