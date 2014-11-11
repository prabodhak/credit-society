package com.bank.service;

import java.util.Collection;

import com.bank.model.AddressProofDocumentTypeMaster;
import com.bank.model.IdentityProofDocumentTypeMaster;

public interface VerificationDocumentMasterService {

	void addIdentityProofDocumentType(IdentityProofDocumentTypeMaster identityProofDocumentMaster);
	void addAddressProofDocumentType(AddressProofDocumentTypeMaster addressProofDocumentMaster);
	void removeIdentityProofDocumentType(IdentityProofDocumentTypeMaster identityProofDocumentTypeMaster);
	void removeAddressProofDocumentType(AddressProofDocumentTypeMaster addressProofDocumentTypeMaster);
	Collection<IdentityProofDocumentTypeMaster> findAllIdentityProofDocumentTypes();
	Collection<AddressProofDocumentTypeMaster> findAllAddressProofDocumentTypes();
}
