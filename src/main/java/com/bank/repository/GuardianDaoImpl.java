package com.bank.repository;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.bank.model.Guardian;

@Repository
public class GuardianDaoImpl implements GuardianDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public void findGuardianById(Long GuardianId) {
		em.find(Guardian.class, GuardianId);
	}

	@Override
	public void findGuardianByName(String name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Collection<Guardian> findAllGuardian() {
		String queryString = "from Guardian ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}

	@Override
	public void removeGuardian(Long guardianId) {
		Guardian guardian = em.find(Guardian.class, guardianId);
		
	}

	@Override
	public void removeGuardian(Guardian guardian) {
		em.remove(guardian);
	}

	@Override
	public void saveGuardian(Guardian guardian) {
		if(guardian.isNew()) {
			em.persist(guardian);
		}
		else {
			em.merge(guardian);
		}
	}

}
