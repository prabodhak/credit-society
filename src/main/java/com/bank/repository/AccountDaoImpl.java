package com.bank.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.bank.model.Account;
import com.bank.model.Member;

public class AccountDaoImpl extends HibernateDao<Account, Long> implements AccountDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Account findByAccountNo(Long accountNo) {
		TypedQuery<Account> query = em.createNamedQuery("Account.findByAccountNo", Account.class) ;
		Account account =query.getSingleResult(); 
		return account;
	}
	
	@Override
	public Member getMemberByAccountNo(Long accountNo) {
		Account account = findByAccountNo(accountNo); 
		return account.getMember();
	}
}
