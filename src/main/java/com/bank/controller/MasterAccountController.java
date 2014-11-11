package com.bank.controller;

import java.util.Collection;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.bank.model.AccountMaster;
import com.bank.service.MasterAccountService;

/**
 * 
 * @author Ajay
 *
 */

public class MasterAccountController {	
	private MasterAccountService masterAccountService;
	
	@Autowired
	public MasterAccountController(MasterAccountService masterAccountService) {
		this.masterAccountService = masterAccountService;
	}

	@RequestMapping(value = "/master/accounts/new", method = RequestMethod.GET)
	public String initCreationForm(Map<String, Object> model) {
		AccountMaster masterAccount = new AccountMaster();
		model.put("masterAccount", masterAccount);
		return "createOrUpdateMasterAccountForm";
	}

	@RequestMapping(value = "/master/accounts/new", method = RequestMethod.POST)
	public String processCreationForm(@Valid AccountMaster masterAccount,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "reateOrUpdateMasterAccountForm";
		} else {
			this.masterAccountService.saveAccount(masterAccount);
			status.setComplete();
			return "redirect:/master/accounts/" + masterAccount.getId();
		}
	}
	
	@RequestMapping(value = "/master/accounts/{memberId}/edit", method = RequestMethod.PUT)
	public String processUpdateAccountMasterForm(@Valid AccountMaster masterAccount,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "createOrUpdateMasterAccountForm";
		} else {
			this.masterAccountService.saveAccount(masterAccount);
			status.setComplete();
			return "redirect:/master/accounts/{memberId}";
		}
	}
	
	@RequestMapping(value = "/master/accounts/{memberId}/delete", method = RequestMethod.DELETE)
	public String processDeleteAccountMaster(String masterAccountId) {
		this.masterAccountService.deleteAccount(masterAccountId);
		return "redirect:/master/accounts";
	}
	
	@RequestMapping("/master/accounts")
    public String showMasterAccountsList(Map<String, Collection<Object>> model) {
        model.put("accounts", this.masterAccountService.findAll());
        return "masterAccountList";
    }
}
