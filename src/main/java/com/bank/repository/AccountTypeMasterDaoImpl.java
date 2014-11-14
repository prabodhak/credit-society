package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.AccountTypeMaster;

@Repository
public class AccountTypeMasterDaoImpl implements AccountTypeMasterDao {

	@Override
	public AccountTypeMaster findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<AccountTypeMaster> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(AccountTypeMaster accountTypeMaster)
			throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(AccountTypeMaster accountTypeMaster) {
		// TODO Auto-generated method stub
		
	}

}
