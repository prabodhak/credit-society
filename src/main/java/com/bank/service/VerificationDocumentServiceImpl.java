package com.bank.service;

import java.util.ArrayList;
import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.model.VerificationDocument;
import com.bank.repository.VerificationDocumentDao;

@Service
@Transactional
public class VerificationDocumentServiceImpl implements
		VerificationDocumentService {
	
	private VerificationDocumentDao verificationDocumentDao;
	
	@Autowired
	public VerificationDocumentServiceImpl(VerificationDocumentDao verificationDocumentDao) {
		this.verificationDocumentDao = verificationDocumentDao;
	}

	@Override
	public void addDocumentType(VerificationDocument verificationDocument) {
		verificationDocumentDao.save(verificationDocument);
	}

	@Override
	public void removeDocumentType(VerificationDocument verificationDocument) {
		verificationDocumentDao.remove(verificationDocument);
	}

	@Override
	public Collection<VerificationDocument> findAllDocumentTypes() {
		
		Collection<VerificationDocument> documents = new ArrayList<VerificationDocument>();
		documents.add(new VerificationDocument(1L, "Address", "Driving License", "description for DL"));
		documents.add(new VerificationDocument(2L, "Address", "Aadhar Card", "description for Aadhar"));
		documents.add(new VerificationDocument(3L, "Identity", "Pan Card", "description for Pan Card"));
		return documents;
	}

	
}
