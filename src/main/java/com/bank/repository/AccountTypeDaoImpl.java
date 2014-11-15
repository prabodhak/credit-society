package com.bank.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.bank.model.AccountType;

@Repository
public class AccountTypeDaoImpl implements AccountTypeDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void findAccountTypeById(Long accountTypeId) {
		em.find(AccountType.class, accountTypeId);
	}

	@Override
	public void findAccountTypeByName(String name) {
		
	}

	@Override
	public List<AccountType> findAllAccountType() {
		String queryString = "from AccountType ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}

	@Override
	public void removeAccountType(Long accountId) {
		AccountType accountType = em.find(AccountType.class, accountId);
		em.remove(accountType);
	}

	@Override
	public void removeAccountType(AccountType accountType) {
		em.remove(accountType);
	}

	@Override
	public void saveAccountType(AccountType accountType) {
		if(accountType.isNew())
			this.em.persist(accountType);
		else
			this.em.merge(accountType);
	}

}
