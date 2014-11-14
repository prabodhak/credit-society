package com.bank.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.AccountTypeMaster;
import com.bank.model.VerificationDocument;
import com.bank.service.VerificationDocumentService;

@Controller
public class VerificationDocumentMasterController {
	
	private VerificationDocumentService verificationDocumentMasterService;
	
	@Autowired
	public VerificationDocumentMasterController(VerificationDocumentService verificationDocumentMasterService) {
		this.verificationDocumentMasterService = verificationDocumentMasterService;
	}

	@RequestMapping(value="verification-document")
	public String showAllVerificationDocuments(Model model) {
		Collection<VerificationDocument> results = verificationDocumentMasterService.findAllDocumentTypes();
		VerificationDocument document = new VerificationDocument();
		model.addAttribute("document", document);
		model.addAttribute("documents", results);
		List<String> types = new ArrayList<String>(10);
		types.add("ABC");
		types.add("LMN");
		types.add("PQR");
		types.add("KJT");
		types.add("SJDS");
		types.add("ABC");
		types.add("LMN");
		types.add("PQR");
		types.add("KJT");
		types.add("SJDS");
		model.addAttribute("types", types);
		return "verificationDocument";
	}
	
	@RequestMapping(value="verification-document/add", method=RequestMethod.POST)
	public String addIdentityMaster(@Valid VerificationDocument verificationDocument) {
		verificationDocumentMasterService.addDocumentType(verificationDocument);
		return "redirect:/verificationDocument";
	}

	@RequestMapping(value="/master/identityDocument/remove")
	public String removeIdentityMaster(@PathVariable("documentId") Integer documentId) {
		
		return null;
	}
	
	@RequestMapping(value="/master/accountType", method=RequestMethod.GET)
	public String showAccountTypeMaster() {
		return null;
	}
	
	@RequestMapping(value="/master/accountType/add", method=RequestMethod.POST)
	public String addAccountTypeMaster(@Valid AccountTypeMaster accountTypeMaster) {
		return null;
	}
	
	@RequestMapping(value="/master/accountType/remove", method=RequestMethod.POST)
	public String removeAccountTypeMaster(@Valid AccountTypeMaster accountTypeMaster) {
		return null;
	}
}
