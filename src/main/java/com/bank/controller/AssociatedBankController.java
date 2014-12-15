package com.bank.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.AssociatedBank;
import com.bank.service.AssociatedBankService;

@Controller
public class AssociatedBankController {
	private AssociatedBankService associatedBankService;
	
	@Autowired
	public AssociatedBankController(AssociatedBankService associatedBankService) {
		this.associatedBankService = associatedBankService;
	}

	@RequestMapping(value="/master/associated-bank", method=RequestMethod.GET)
	public String showAllAssociatedBanks(Model model) {
		
		//System.out.println(requestEntity.getHeaders());
		Collection<AssociatedBank> results = associatedBankService.findAllAssociatedBanks();
		AssociatedBank associatedBank = new AssociatedBank();
		model.addAttribute("associatedBank", associatedBank);
		model.addAttribute("associatedBanks", results);
		return "addAssociatedBank";
	}

}
