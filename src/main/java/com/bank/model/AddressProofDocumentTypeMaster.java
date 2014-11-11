package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "address_proof_document_type_master")
public class AddressProofDocumentTypeMaster extends BaseEntity {

	@Column(name = "document_name")
	@NotEmpty
	private String documentName;

	@Column(name = "document_description")
	private String documentDescription;

	@Column(name = "inactive", nullable = false)
	private boolean inactive;

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
