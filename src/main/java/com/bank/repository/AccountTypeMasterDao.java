package com.bank.repository;

import com.bank.model.AccountTypeMaster;


public interface AccountTypeMasterDao extends GenericDao<AccountTypeMaster, Long>{

	void remove(Long accountId);
	
}
