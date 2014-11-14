package com.bank.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bank.model.AccountType;

@Service
public interface AccountTypeService {
	void findAccountTypeById(Long accountTypeId);
	void findAccountTypeByName(String name);
	List<AccountType> findAllAccountType();
	void saveAccountType(AccountType accountType);
	void deleteAccountType(Long accountId);
	void deleteAccountType(AccountType accountType);
}
