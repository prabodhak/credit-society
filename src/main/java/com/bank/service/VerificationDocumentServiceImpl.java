package com.bank.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.VerificationDocument;
import com.bank.repository.VerificationDocumentDao;

@Service
public class VerificationDocumentServiceImpl implements
		VerificationDocumentService {
	
	private VerificationDocumentDao verificationDocumentDao;
	
	@Autowired
	public VerificationDocumentServiceImpl(VerificationDocumentDao verificationDocumentDao) {
		this.verificationDocumentDao = verificationDocumentDao;
	}

	@Override
	@Transactional
	public void addDocumentType(VerificationDocument verificationDocument) {
		verificationDocumentDao.add(verificationDocument);
	}

	@Override
	@Transactional
	public void removeDocumentType(VerificationDocument verificationDocument) {
		verificationDocumentDao.delete(verificationDocument);
	}

	@Override
	@Transactional(readOnly=true)
	public Collection<VerificationDocument> findAllDocumentTypes() {
		
		return verificationDocumentDao.findAll();
		/*Collection<VerificationDocument> documents = new ArrayList<VerificationDocument>();
		documents.add(new VerificationDocument(1L, "Address", "Driving License", "description for DL", false));
		documents.add(new VerificationDocument(2L, "Address", "Aadhar Card", "description for Aadhar", true));
		documents.add(new VerificationDocument(3L, "Identity", "Pan Card", "description for Pan Card", false));
		documents.add(new VerificationDocument(4L, "Address", "Ration Card", "description for Ration Card", false));
		documents.add(new VerificationDocument(5L, "Address", "Aadhar Card", "description for Aadhar", true));
		documents.add(new VerificationDocument(6L, "Identity", "Letter from MLA", "description for Pan Card", false));
		documents.add(new VerificationDocument(7L, "Address", "Driving License", "description for DL", false));
		documents.add(new VerificationDocument(8L, "Address", "Aadhar Card", "description for Aadhar", true));
		documents.add(new VerificationDocument(9L, "Identity", "Pan Card", "description for Pan Card", false));
		documents.add(new VerificationDocument(10L, "Address", "Passport", "description for DL", false));
		documents.add(new VerificationDocument(11L, "Address", "Aadhar Card", "description for Aadhar", true));
		documents.add(new VerificationDocument(12L, "Identity", "Pan Card", "description for Pan Card", false));
		return documents;*/
	}

	@Override
	public List<VerificationDocument> findAllDocumentsByType(
			String documentType) {
		return verificationDocumentDao.findAllDocumentsByType(documentType);
	}

	
}
