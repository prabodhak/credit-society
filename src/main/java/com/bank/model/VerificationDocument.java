package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="verification_document")
public class VerificationDocument extends BaseEntity {
	
	@Column(name="document_type")
	@NotEmpty
	private String documentType;
	
	@Column(name = "document_name")
	@NotEmpty
	private String documentName;

	@Column(name = "document_description")
	private String documentDescription;

	@Column(name = "inactive", nullable = false)
	private boolean inactive;
	
	public VerificationDocument() {
		// TODO Auto-generated constructor stub
	}
	
	public VerificationDocument(Long id, String documentType, String documentName, String description, boolean inactive) {
		this.id = id;
		this.documentType = documentType;
		this.documentName = documentName;
		this.documentDescription = description;
		this.inactive = inactive;
	}

	public String getDocumentType() {
		return documentType;
	}

	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}

	public String getDocumentDescription() {
		return documentDescription;
	}

	public void setDocumentDescription(String documentDescription) {
		this.documentDescription = documentDescription;
	}

	public boolean isInactive() {
		return inactive;
	}

	public void setInactive(boolean inactive) {
		this.inactive = inactive;
	}

	@PrePersist
	public void prePersist() {
		setInactive(false);
	}

}
