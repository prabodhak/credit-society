package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.AccountTypeMaster;

public interface AccountTypeMasterDao {

	AccountTypeMaster findById(Long id);
	
	Collection<AccountTypeMaster> findAll();

	void save(AccountTypeMaster accountTypeMaster)
			throws DataAccessException;
	
	void remove(AccountTypeMaster accountTypeMaster);
}
