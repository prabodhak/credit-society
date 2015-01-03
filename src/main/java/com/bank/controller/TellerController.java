package com.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		return "redirect:/teller/deposit";
	}

}
