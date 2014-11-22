package com.bank.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.AccountType;
import com.bank.service.AccountTypeService;
import com.bank.utils.MaritalStatus;
import com.bank.utils.Relation;

@Controller
@RequestMapping("/master/account-type")
public class AccountTypeController {

	private AccountTypeService accountTypeService;
	
	@ModelAttribute
	public AccountType createAccountType() {
		return new AccountType();
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String showAccountPage() {
		return "accountType";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initAccountTypeCreationForm(Map<String, Object> model) {
		AccountType masterAccount = new AccountType();
		model.put("masterAccount", masterAccount);
		return "createOrUpdateAccountType";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processCreationForm() {
		AccountType masterAccount = new AccountType();
		//model.put("masterAccount", masterAccount);
		return "createOrUpdateAccountType";
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String showAccountMasterList() {
		List<AccountType> result = accountTypeService.findAllAccountType();
		return "accountMasterType";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String deleteAccountMaster(Long accountId) {
		accountTypeService.deleteAccountType(accountId);
		return "redirect:/";
	}
}
