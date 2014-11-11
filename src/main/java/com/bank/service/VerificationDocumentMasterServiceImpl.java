package com.bank.service;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.model.AddressProofDocumentTypeMaster;
import com.bank.model.IdentityProofDocumentTypeMaster;
import com.bank.repository.AddressProofDocumentTypeMasterDao;
import com.bank.repository.IdentityProofDocumentMasterDao;

@Service
@Transactional
public class VerificationDocumentMasterServiceImpl implements
		VerificationDocumentMasterService {

	private AddressProofDocumentTypeMasterDao addressProofDocumentMasterDao;
	private IdentityProofDocumentMasterDao identityProofDocumentMasterDao;

	@Autowired
	public VerificationDocumentMasterServiceImpl(
			AddressProofDocumentTypeMasterDao addressProofDocumentMasterDao,
			IdentityProofDocumentMasterDao identityProofDocumentMasterDao) {
		this.addressProofDocumentMasterDao = addressProofDocumentMasterDao;
		this.identityProofDocumentMasterDao = identityProofDocumentMasterDao;
	}

	@Override
	public void addIdentityProofDocumentType(
			IdentityProofDocumentTypeMaster identityProofDocumentMaster) {
		identityProofDocumentMasterDao.save(identityProofDocumentMaster);
	}

	@Override
	public void removeIdentityProofDocumentType(IdentityProofDocumentTypeMaster identityProofDocumentTypeMaster) {
		identityProofDocumentMasterDao.remove(identityProofDocumentTypeMaster);
	}

	@Override
	public void addAddressProofDocumentType(
			AddressProofDocumentTypeMaster addressProofDocumentMaster) {
		addressProofDocumentMasterDao.save(addressProofDocumentMaster);
	}

	@Override
	public void removeAddressProofDocumentType(AddressProofDocumentTypeMaster addressProofDocumentTypeMaster) {
		addressProofDocumentMasterDao.remove(addressProofDocumentTypeMaster);
	}

	@Override
	public Collection<IdentityProofDocumentTypeMaster> findAllIdentityProofDocumentTypes() {
		return identityProofDocumentMasterDao.findAll();
	}

	@Override
	public Collection<AddressProofDocumentTypeMaster> findAllAddressProofDocumentTypes() {
		return addressProofDocumentMasterDao.findAll();
	}
}
