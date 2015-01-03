package com.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.MemberAccount;
import com.bank.service.TellerService;

@Controller
@RequestMapping(value="/teller")
public class TellerController {
	
	private TellerService tellerService;
	
	@Autowired
	public TellerController(TellerService tellerService) {
		this.tellerService = tellerService;
	}
	
	@RequestMapping(value="/deposit", method=RequestMethod.GET)
	public String initDepositForm() {
		return "depositForm";
	}
	
	@RequestMapping(value="/deposit", method=RequestMethod.POST)
	public String processDepositForm() {
		//tellerService.deposit(amount);
		return "redirect:/teller/deposit";
	}
	
	@RequestMapping(value="/withdrawal", method=RequestMethod.GET)
	public String initWithdrawalForm() {
		return "withdrawalForm";
	}
	
	@RequestMapping(value="/withdrawal", method=RequestMethod.POST)
	public String processWithdrawalForm() {
		MemberAccount account;
		//tellerService.withdrawal(account, amount);
		return "redirect:/teller/withdrawal";
	}
	
	@RequestMapping(value="fundTransfer", method=RequestMethod.GET)
	public String initFundTransferForm() {
		return "fundTransfer";
	}

	@RequestMapping(value="fundTransfer", method=RequestMethod.POST)
	public String processFundTransferForm() {
		return "redirect:/teller/fundTransfer";
	}
}
