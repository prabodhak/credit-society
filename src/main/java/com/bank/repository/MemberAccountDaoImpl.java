package com.bank.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.bank.model.Member;
import com.bank.model.MemberAccount;

public class MemberAccountDaoImpl extends HibernateDao<MemberAccount, Long> implements MemberAccountDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Member getMemberInfoByAccountNo() {
		CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();
		CriteriaQuery<MemberAccount> query = criteriaBuilder.createQuery(MemberAccount.class);
		Root<MemberAccount> root = query.from(MemberAccount.class);
		return null;
	}

	
}
