package com.bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.AccountType;
import com.bank.repository.AccountTypeDao;

@Service
public class AccountTypeServiceImpl implements AccountTypeService {

	private AccountTypeDao accountTypeDao;
	
	@Autowired
	public AccountTypeServiceImpl(AccountTypeDao accountTypeDao) {
		this.accountTypeDao = accountTypeDao;
	}

	@Override
	@Transactional(readOnly=true)
	public void findAccountTypeById(Long accountTypeId) {
		accountTypeDao.findById(accountTypeId);
	}

	@Override
	@Transactional(readOnly=true)
	public void findAccountTypeByName(String name) {
		accountTypeDao.findAccountTypeByName(name);
	}

	@Override
	@Transactional(readOnly=true)
	@Cacheable(value="accountTypes")
	public List<AccountType> findAllAccountType() {
		return accountTypeDao.findAll();
	}

	@Override
	@Transactional
	public void saveAccountType(AccountType accountType) {
		accountTypeDao.save(accountType);
	}

	@Override
	@Transactional
	public void deleteAccountType(Long accountId) {
		accountTypeDao.removeAccountType(accountId);
	}

	@Override
	@Transactional
	public void deleteAccountType(AccountType accountType) {
		accountTypeDao.delete(accountType);
	}
}
