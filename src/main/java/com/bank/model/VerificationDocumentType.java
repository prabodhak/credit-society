package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@SuppressWarnings("serial")
@Entity
@Table(name="verification_document_type")
public class VerificationDocumentType extends BaseEntity {
	
	@Column(name="document_type")
	@NotEmpty
	private String documentType;

	public VerificationDocumentType() {
		// TODO Auto-generated constructor stub
	}
	
	public String getDocumentType() {
		return documentType;
	}

	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}
}
