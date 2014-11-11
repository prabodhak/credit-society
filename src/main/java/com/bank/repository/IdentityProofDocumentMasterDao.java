package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.IdentityProofDocumentTypeMaster;

public interface IdentityProofDocumentMasterDao {

	IdentityProofDocumentTypeMaster findById(Long documentId);
	
	Collection<IdentityProofDocumentTypeMaster> findAll();

	void save(IdentityProofDocumentTypeMaster identityProofDocumentTypeMaster)
			throws DataAccessException;
	
	void remove(IdentityProofDocumentTypeMaster identityProofDocumentTypeMaster);
}
