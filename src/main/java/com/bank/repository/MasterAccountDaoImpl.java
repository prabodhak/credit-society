package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.AccountMaster;
import com.bank.model.VerificationDocument;

@Repository
public class MasterAccountDaoImpl implements MasterAccountDao {

	@Override
	public AccountMaster findByName(String name) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public VerificationDocument findById(Long documentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<VerificationDocument> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(VerificationDocument verificationDocument)
			throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(VerificationDocument verificationDocument) {
		// TODO Auto-generated method stub
		
	}


}
