package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.AddressProofDocumentTypeMaster;


public interface AddressProofDocumentTypeMasterDao {
	
	AddressProofDocumentTypeMaster findById(Long documentId);
	
	Collection<AddressProofDocumentTypeMaster> findAll();

	void save(AddressProofDocumentTypeMaster addressProofDocumentTypeMaster)
			throws DataAccessException;
	
	void remove(AddressProofDocumentTypeMaster addressProofDocumentTypeMaster);
}
