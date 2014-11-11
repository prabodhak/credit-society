package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.VerificationDocument;

public interface VerificationDocumentDao {

	VerificationDocument findById(Long documentId);
	
	Collection<VerificationDocument> findAll();

	void save(VerificationDocument verificationDocument)
			throws DataAccessException;
	
	void remove(VerificationDocument verificationDocument);
}
