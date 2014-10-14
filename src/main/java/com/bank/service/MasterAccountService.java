package com.bank.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import com.bank.model.MasterAccount;

@Service
public interface MasterAccountService {
	void deleteAccount(String accountId);
	void saveAccount(MasterAccount accountMaster);
	void findAccountById();
	void findAccountByName(String name);
	Collection<Object> findAll();

}
