package com.bank.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.AccountType;
import com.bank.repository.AccountTypeDao;

@Service
@Transactional
public class AccountTypeServiceImpl implements AccountTypeService {

	private AccountTypeDao accountTypeDao;
	
	@Autowired
	public AccountTypeServiceImpl(AccountTypeDao accountTypeDao) {
		this.accountTypeDao = accountTypeDao;
	}

	@Override
	public void findAccountTypeById(Long accountTypeId) {
		accountTypeDao.findAccountTypeById(accountTypeId);
	}

	@Override
	public void findAccountTypeByName(String name) {
		accountTypeDao.findAccountTypeByName(name);
	}

	@Override
	public Collection<AccountType> findAllAccountType() {
		return accountTypeDao.findAllAccountType();
	}

	@Override
	public void saveAccountType(AccountType accountType) {
		accountTypeDao.saveAccountType(accountType);
	}

	@Override
	public void removeAccountType(Long accountId) {
		accountTypeDao.removeAccountType(accountId);
	}

	@Override
	public void removeAccountType(AccountType accountType) {
		accountTypeDao.removeAccountType(accountType);
	}
}