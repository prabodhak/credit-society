package com.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.exception.InSufficientBalanaceException;
import com.bank.model.DepositForm;
import com.bank.model.MemberAccount;
import com.bank.model.Transaction;
import com.bank.model.WithdrawalForm;
import com.bank.service.TellerService;

@Controller
@RequestMapping(value="/teller")
public class TellerController {
	
	private TellerService tellerService;
	private DepositForm depositForm;
	
	@Autowired
	public TellerController(TellerService tellerService) {
		this.tellerService = tellerService;
	}
	
	@RequestMapping(value="/deposit", method=RequestMethod.GET)
	public String initDepositForm(Model model, DepositForm form) {
		return "depositForm";
	}
	
	@RequestMapping(value="/deposit", method=RequestMethod.POST)
	public String processDepositForm(@ModelAttribute DepositForm depositForm) {
		Transaction transaction = new Transaction();
		tellerService.deposit(depositForm.getAccountNo(), depositForm.getAmount());
		return "redirect:/teller/deposit";
	}
	
	@RequestMapping(value="/withdrawal", method=RequestMethod.GET)
	public String initWithdrawalForm(Model model) {
		return "withdrawalForm";
	}
	
	@RequestMapping(value="/withdrawal", method=RequestMethod.POST)
	public String processWithdrawalForm(@ModelAttribute WithdrawalForm withdrawalForm) {
		MemberAccount account;
		try {
			tellerService.withdrawal(withdrawalForm.getAccountNo(), withdrawalForm.getAmount());
		} catch (InSufficientBalanaceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/teller/withdrawal";
	}
	
	@RequestMapping(value="fund-transfer", method=RequestMethod.GET)
	public String initFundTransferForm() {
		return "fundTransferForm";
	}

	@RequestMapping(value="fund-transfer", method=RequestMethod.POST)
	public String processFundTransferForm() {
		return "redirect:/teller/fund-transfer";
	}
	
	@RequestMapping(value="passbook-update", method=RequestMethod.GET)
	public String initFundPassbookUpdateForm() {
		return "passbookUpdateForm";
	}

	@RequestMapping(value="passbook-update", method=RequestMethod.POST)
	public String processPassbookUpdateForm() {
		return "redirect:/teller/passbook-update";
	}
	
	@RequestMapping(value="ledger-enquiry", method=RequestMethod.GET)
	public String initFundLedgerEnquiryForm() {
		return "ledgerEnquiryForm";
	}

	@RequestMapping(value="ledger-enquiry", method=RequestMethod.POST)
	public String processLedgerEnquiryForm() {
		return "redirect:/teller/ledger-enquiry";
	}
}
