package com.bank.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.bank.model.Guardian;

@Repository
public class GuardianDaoImpl extends HibernateDao<Guardian, Long> implements
		GuardianDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void findGuardianByName(String name) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeGuardian(Long guardianId) {
		Guardian guardian = em.find(Guardian.class, guardianId);
		em.remove(guardian);
	}

}
