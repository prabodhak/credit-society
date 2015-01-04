package com.bank.repository;

import com.bank.model.Account;
import com.bank.model.Member;

public interface AccountDao extends GenericDao<Account, Long>{
	
	Account findByAccountNo(Long accountNo);
	
	Member getMemberByAccountNo(Long accountNo);
}
