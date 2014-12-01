package com.bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.AccountTypeMaster;
import com.bank.repository.AccountTypeMasterDao;

@Service
public class AccountTypeMasterServiceImpl implements AccountTypeMasterService {

	private AccountTypeMasterDao accountTypeMasterDao;
	
	
	@Autowired
	public AccountTypeMasterServiceImpl(AccountTypeMasterDao accountTypeMasterDao) {
		this.accountTypeMasterDao = accountTypeMasterDao;
	}
	
	@Override
	@Transactional(readOnly=true)
	public void findAccountTypeMasterById(Long accountId) {
		accountTypeMasterDao.findById(accountId);
	}

	@Override
	public void findAccountTypeMasterByName(String accountName) {
		
	}

	@Override
	@Transactional(readOnly=true)
	public List<AccountTypeMaster> findAllAccountTypeMaster() {
		return accountTypeMasterDao.findAll();
	}

	@Override
	@Transactional
	public void saveAccountTypeMaster(AccountTypeMaster accountTypeMaster) {
		accountTypeMasterDao.save(accountTypeMaster);
	}

	@Override
	@Transactional
	public void deleteAccountTypeMaster(Long accountId) {
		accountTypeMasterDao.remove(accountId);
	}

	@Override
	@Transactional
	public void deleteAccountTypeMaster(AccountTypeMaster accountTypeMaster) {
		accountTypeMasterDao.remove(accountTypeMaster);
	}
}
