package com.bank.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import com.bank.model.AccountMaster;

@Service
public interface MasterAccountService {
	void deleteAccount(String accountId);
	void saveAccount(AccountMaster accountMaster);
	void findAccountById();
	void findAccountByName(String name);
	Collection<Object> findAll();

}
