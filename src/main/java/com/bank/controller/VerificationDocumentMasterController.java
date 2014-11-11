package com.bank.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bank.model.AddressProofDocumentTypeMaster;
import com.bank.model.IdentityProofDocumentTypeMaster;
import com.bank.service.VerificationDocumentMasterService;

@Controller
public class VerificationDocumentMasterController {
	
	private VerificationDocumentMasterService verificationDocumentMasterService;
	
	@Autowired
	public VerificationDocumentMasterController(VerificationDocumentMasterService verificationDocumentMasterService) {
		this.verificationDocumentMasterService = verificationDocumentMasterService;
	}

	@RequestMapping(value="/master/identityDocument")
	public String findAllIdentityProofDocumentTypes() {
		Collection<IdentityProofDocumentTypeMaster> results = verificationDocumentMasterService.findAllIdentityProofDocumentTypes();
		
		return "docs";
	}
	
	@RequestMapping(value="/master/addressDocument")
	public String findAllAddressProofDocumentTypes() {
		Collection<AddressProofDocumentTypeMaster> results = verificationDocumentMasterService.findAllAddressProofDocumentTypes();
		return null;
	}
	
	@RequestMapping(value="/master/identityDocument/add")
	public String addIdentityMaster() {

		return null;
	}

	@RequestMapping(value="/master/identityDocument/remove")
	public String removeIdentityMaster(@PathVariable("documentId") Integer documentId) {
		
		return null;
	}
	
	@RequestMapping(value="/master/addressDocument/add")
	public String addAddressMaster(@PathVariable("documentId") Integer documentId) {
		
		return null;
	}
	
	@RequestMapping(value="/master/addressDocument/remove")
	public String removeAddressMaster(@PathVariable("documentId") Integer documentId) {
		
		return null;
	}

}
