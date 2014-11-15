package com.bank.service;

import java.util.List;

import com.bank.model.AccountTypeMaster;

public interface AccountTypeMasterService {
	
	void findAccountTypeMasterById(Long accountId);
	void findAccountTypeMasterByName(String accountName);
	List<AccountTypeMaster> findAllAccountTypeMaster();
	void saveAccountTypeMaster(AccountTypeMaster accountTypeMaster);
	void deleteAccountTypeMaster(Long accountId);
	void deleteAccountTypeMaster(AccountTypeMaster accountTypeMaster);
}
