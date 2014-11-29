package com.bank.model;

import java.util.ArrayList;
import java.util.List;

public class VerificationDocuments {
	private List<VerificationDocument> documents;

	public List<VerificationDocument> getDocuments() {
		if(documents == null) {
			documents = new ArrayList<>();
		}
		return documents;
	}
}
