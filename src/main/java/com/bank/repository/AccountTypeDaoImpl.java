package com.bank.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.bank.model.AccountType;

@Repository
public class AccountTypeDaoImpl extends HibernateDao<AccountType, Long> implements AccountTypeDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public AccountType findAccountTypeByName(String name) {
		return null;
	}

	@Override
	public void removeAccountType(Long accountId) {
		AccountType accountType = em.find(AccountType.class, accountId);
		em.remove(accountType);
	}

}
