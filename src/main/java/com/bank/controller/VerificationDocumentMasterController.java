package com.bank.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.VerificationDocument;
import com.bank.service.VerificationDocumentService;

@Controller
public class VerificationDocumentMasterController {
	
	private VerificationDocumentService verificationDocumentMasterService;
	
	@Autowired
	public VerificationDocumentMasterController(VerificationDocumentService verificationDocumentMasterService) {
		this.verificationDocumentMasterService = verificationDocumentMasterService;
	}

	@RequestMapping(value="/master/verification-document", method=RequestMethod.GET)
	public String showAllVerificationDocuments(Model model) {
		
		//System.out.println(requestEntity.getHeaders());
		Collection<VerificationDocument> results = verificationDocumentMasterService.findAllDocumentTypes();
		VerificationDocument document = new VerificationDocument();
		model.addAttribute("document", document);
		model.addAttribute("documents", results);
		List<String> types = new ArrayList<String>(10);
		types.add("Address Proof");
		types.add("Identity Proof");
		model.addAttribute("types", types);
		return "verificationDocument";
	}
	
	@RequestMapping(value="/master/verification-document/add", method=RequestMethod.POST)
	public String addIdentityMaster(@Valid VerificationDocument verificationDocument) {
		verificationDocumentMasterService.addDocumentType(verificationDocument);
		return "redirect:/master/verification-document";
	}
}
