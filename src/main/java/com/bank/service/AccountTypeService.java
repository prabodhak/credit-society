package com.bank.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import com.bank.model.AccountType;

@Service
public interface AccountTypeService {
	void findAccountTypeById(Long accountTypeId);
	void findAccountTypeByName(String name);
	Collection<AccountType> findAllAccountType();
	void saveAccountType(AccountType accountType);
	void removeAccountType(Long accountId);
	void removeAccountType(AccountType accountType);
}
