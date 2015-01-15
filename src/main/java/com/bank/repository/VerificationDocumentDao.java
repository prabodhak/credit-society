package com.bank.repository;

import java.util.List;

import com.bank.model.VerificationDocument;

public interface VerificationDocumentDao extends GenericDao<VerificationDocument, Long>{
	
	List<String> findAllIdentityProofDocumentsName();
	
	List<String> findAllAddressProofDocumentsName();
	
	List<VerificationDocument> findAllDocumentsByType(String documentType);
	
}
