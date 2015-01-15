package com.bank.service;

import java.util.Collection;
import java.util.List;

import com.bank.model.VerificationDocument;

public interface VerificationDocumentService {

	void addDocumentType(VerificationDocument verificationDocument);
	
	void removeDocumentType(VerificationDocument verificationDocument);
	
	Collection<VerificationDocument> findAllDocumentTypes();
	
	List<VerificationDocument> findAllDocumentsByType(String documentType);
}
