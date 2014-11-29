package com.bank.model;

import java.util.ArrayList;
import java.util.List;

public class IdentityProofDocumentTypes {

	List<IdentityProofDocumentType> documentTypes;

	public List<IdentityProofDocumentType> getDocumentTypes() {
		if(documentTypes == null) {
			documentTypes = new ArrayList<IdentityProofDocumentType>();
		}
		return documentTypes;
	}
}
