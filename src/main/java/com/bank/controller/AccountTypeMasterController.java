package com.bank.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.bank.model.AccountType;
import com.bank.model.AccountTypeMaster;
import com.bank.service.AccountTypeMasterService;

/**
 * 
 * @author Ajay
 *
 */
@Controller
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
	
	@RequestMapping(value = "account-master-type", method = RequestMethod.GET)
	public String showAccountMasterPage() {
		return "accountMasterType";
	}
	
	@RequestMapping(value = "account-master-type-add", method = RequestMethod.GET)
	public String initaccountMasterTypeCreationForm(Map<String, Object> model) {
		AccountType masterAccount = new AccountType();
		model.put("masterAccount", masterAccount);
		return "addAccountMasterTypeForm";
	}
	
	@RequestMapping(value = "account-master-type-add", method = RequestMethod.POST)
	public String processCreationForm(Map<String, Object> model) {
		AccountType masterAccount = new AccountType();
		model.put("masterAccount", masterAccount);
		return "createOrUpdateAccountType";
	}

	@RequestMapping(value = "/master/accounts/new", method = RequestMethod.POST)
	public String processCreationForm(@Valid AccountTypeMaster accountTypeMaster,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "reateOrUpdateMasterAccountForm";
		} else {
			this.accountTypeMasterService.saveAccountTypeMaster(accountTypeMaster);
			status.setComplete();
			return "redirect:/master/accounts/" + accountTypeMaster.getId();
		}
	}
	
	/*@RequestMapping(value = "/master/accounts/{memberId}/edit", method = RequestMethod.PUT)
	public String processUpdateAccountMasterForm(@Valid AccountType masterAccount,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "createOrUpdateMasterAccountForm";
		} else {
			this.accountTypeMasterService.saveAccount(masterAccount);
			status.setComplete();
			return "redirect:/master/accounts/{memberId}";
		}
	}
	
	@RequestMapping(value = "/master/accounts/{memberId}/delete", method = RequestMethod.DELETE)
	public String processDeleteAccountMaster(String masterAccountId) {
		this.accountTypeMasterService.deleteAccount(masterAccountId);
		return "redirect:/master/accounts";
	}
	
	@RequestMapping("/master/accounts")
    public String showMasterAccountsList(Map<String, Collection<Object>> model) {
        model.put("accounts", this.accountTypeMasterService.findAll());
        return "masterAccountList";
    }*/
}
