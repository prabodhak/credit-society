package com.bank.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.AccountType;
import com.bank.service.AccountTypeService;

@Controller
public class AccountTypeController {

	private AccountTypeService accountTypeService;
	
	@ModelAttribute
	public AccountType createAccountType() {
		return new AccountType();
	}
	
	@RequestMapping(value = "account-type", method = RequestMethod.GET)
	public String showAccountPage() {
		return "accountType";
	}
	
	@RequestMapping(value = "account-type/add", method = RequestMethod.GET)
	public String initAccountTypeCreationForm(Map<String, Object> model) {
		AccountType masterAccount = new AccountType();
		model.put("masterAccount", masterAccount);
		return "createOrUpdateAccountType";
	}
	
	@RequestMapping(value = "account-type-add", method = RequestMethod.POST)
	public String processCreationForm() {
		AccountType masterAccount = new AccountType();
		//model.put("masterAccount", masterAccount);
		return "createOrUpdateAccountType";
	}
	
	
	
}
