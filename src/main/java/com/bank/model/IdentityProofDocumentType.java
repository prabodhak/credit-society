package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="Identity_Proof_Document_Type")
public class IdentityProofDocumentType extends BaseEntity {

	@Column(name="document_name")
	private String documentName;

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}
	
}
