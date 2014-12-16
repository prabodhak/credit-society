package com.bank.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bank.model.AccountType;

@Service
public interface AccountTypeService {
	AccountType findAccountTypeById(Long accountTypeId);
	AccountType findAccountTypeByName(String name);
	List<AccountType> findAllAccountType();
	void saveAccountType(AccountType accountType);
	void deleteAccountType(Long accountId);
	void deleteAccountType(AccountType accountType);
}
