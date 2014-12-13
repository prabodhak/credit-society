package com.bank.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.bank.model.AccountTypeMaster;

@Repository
public class AccountTypeMasterDaoImpl extends HibernateDao<AccountTypeMaster, Long> implements AccountTypeMasterDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void remove(Long accountId) {
		AccountTypeMaster accountTypeMaster = em.find(AccountTypeMaster.class, accountId);
		em.remove(accountTypeMaster);
	}
	
}
