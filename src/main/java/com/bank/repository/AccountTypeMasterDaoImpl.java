package com.bank.repository;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.AccountTypeMaster;

@Repository
public class AccountTypeMasterDaoImpl implements AccountTypeMasterDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public AccountTypeMaster findById(Long accountId) {
		return em.find(AccountTypeMaster.class, accountId);
	}

	@Override
	public List<AccountTypeMaster> findAll() {
		String queryString = "from AccountTypeMaster";
		Query query = em.createNamedQuery(queryString);
		return query.getResultList();
	}

	@Override
	public void save(AccountTypeMaster accountTypeMaster)
			throws DataAccessException {
		if(accountTypeMaster.isNew()) {
			em.persist(accountTypeMaster);
		}
		else {
			em.merge(accountTypeMaster);
		}
	}

	@Override
	public void remove(Long accountId) {
		AccountTypeMaster accountTypeMaster = em.find(AccountTypeMaster.class, accountId);
		em.remove(accountTypeMaster);
	}
	
	@Override
	public void remove(AccountTypeMaster accountTypeMaster) {
		em.remove(accountTypeMaster);
	}
}
