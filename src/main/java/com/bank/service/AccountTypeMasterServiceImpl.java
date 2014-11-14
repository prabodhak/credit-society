package com.bank.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.AccountTypeMaster;
import com.bank.repository.AccountTypeMasterDao;

@Service
@Transactional
public class AccountTypeMasterServiceImpl implements AccountTypeMasterService {

	private AccountTypeMasterDao accountTypeMasterDao;
	
	@Autowired
	public AccountTypeMasterServiceImpl(AccountTypeMasterDao accountTypeMasterDao) {
		this.accountTypeMasterDao = accountTypeMasterDao;
	}
	
	@Override
	public void findAccountTypeMasterById(Long accountId) {
		accountTypeMasterDao.findById(accountId);
	}

	@Override
	public void findAccountTypeMasterByName(String accountName) {
		
	}

	@Override
	public Collection<AccountTypeMaster> findAllAccountTypeMaster() {
		return accountTypeMasterDao.findAll();
	}

	@Override
	public void saveAccountTypeMaster(AccountTypeMaster accountTypeMaster) {
		accountTypeMasterDao.save(accountTypeMaster);
	}

	@Override
	public void deleteAccountTypeMaster(Long accountId) {
		accountTypeMasterDao.remove(accountId);
	}

	@Override
	public void deleteAccountTypeMaster(AccountTypeMaster accountTypeMaster) {
		accountTypeMasterDao.remove(accountTypeMaster);
	}

}
