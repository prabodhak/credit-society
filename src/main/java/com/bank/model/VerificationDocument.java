package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@SuppressWarnings("serial")
@Entity
@Table(name="verification_document")
public class VerificationDocument extends NamedEntity {
	
	@Column(name="document_type")
	@NotEmpty
	private String documentType;
	
	@Column(name = "document_description")
	private String documentDescription;

	@Column(name = "active", nullable = false)
	private boolean active;
	
	public VerificationDocument() {
		// TODO Auto-generated constructor stub
	}
	
	public VerificationDocument(String documentType, String documentName, String description, boolean active) {
		super(documentName);
		this.documentType = documentType;
		this.documentDescription = description;
		this.active = active;
	}

	public String getDocumentType() {
		return documentType;
	}

	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}

	public String getDocumentDescription() {
		return documentDescription;
	}

	public void setDocumentDescription(String documentDescription) {
		this.documentDescription = documentDescription;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	@PrePersist
	public void prePersist() {
		setActive(true);
	}

}
