package com.bank.controller;

import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

	@RequestMapping(value="master/verification-documents")
	public String showAllVerificationDocuments(Model model) {
		Collection<VerificationDocument> results = verificationDocumentMasterService.findAllDocumentTypes();
		VerificationDocument document = new VerificationDocument();
		model.addAttribute("document", document);
		model.addAttribute("documents", results);
		return "verificationDocuments";
	}
	
	@RequestMapping(value="/master/verification-documents/add", method=RequestMethod.POST)
	public String addIdentityMaster(@Valid VerificationDocument verificationDocument) {
		verificationDocumentMasterService.addDocumentType(verificationDocument);
		return null;
	}

	@RequestMapping(value="/master/identityDocument/remove")
	public String removeIdentityMaster(@PathVariable("documentId") Integer documentId) {
		
		return null;
	}
}
