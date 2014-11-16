package com.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.AccountTypeMaster;
import com.bank.service.AccountTypeMasterService;

/**
 * 
 * @author Ajay
 *
 */

@Controller
@RequestMapping("/master/account-master-type")
public class AccountTypeMasterController {	
	private AccountTypeMasterService accountTypeMasterService;
	
	@Autowired
	public AccountTypeMasterController(AccountTypeMasterService accountTypeMasterService) {
		this.accountTypeMasterService = accountTypeMasterService;
	}

	@ModelAttribute("accountMasterFormBean")
	public AccountTypeMaster createAccountMaster() {
		return new AccountTypeMaster();
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String showAccountMasterPage(Model model) {
		List<AccountTypeMaster> accountList = accountTypeMasterService.findAllAccountTypeMaster();
		model.addAttribute("accountList", accountList);
		return "accountMasterType";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initaccountMasterTypeCreationForm() {
		return "addAccountMasterTypeForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processCreationForm(@ModelAttribute("accountMasterFormBean") AccountTypeMaster accountTypeMaster) {
		accountTypeMasterService.saveAccountTypeMaster(accountTypeMaster);
		return "redirect:/master/account-master-type";
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String showAccountMasterList() {
		List<AccountTypeMaster> result = accountTypeMasterService.findAllAccountTypeMaster();
		return "accountMasterType";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String deleteAccountMaster(Long accountId) {
		accountTypeMasterService.deleteAccountTypeMaster(accountId);
		return "redirect:/";
	}
}
