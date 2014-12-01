package com.bank.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.bank.model.EducationalQualification;
import com.bank.model.MaritalStatus;
import com.bank.model.Occupation;
import com.bank.model.Relation;
import com.bank.model.Religion;

@Repository
public class MasterDataLoaderDao {

	@PersistenceContext
	EntityManager em;
	
	@SuppressWarnings("unchecked")
	public List<Occupation> finadAllOccupations() {
		String queryString = "from Occupation ";
		Query query = em.createQuery(queryString);
		return (List<Occupation>)query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Relation> finadAllRelations() {
		String queryString = "from Relation ";
		Query query = em.createQuery(queryString);
		return (List<Relation>)query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<MaritalStatus> finadAllMaritalStatus() {
		String queryString = "from MaritalStatus ";
		Query query = em.createQuery(queryString);
		return (List<MaritalStatus>)query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Religion> finadAllReligion() {
		String queryString = "from Religion ";
		Query query = em.createQuery(queryString);
		return (List<Religion>)query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<EducationalQualification> finadAllEducationalQualification() {
		String queryString = "from EducationalQualification ";
		Query query = em.createQuery(queryString);
		return (List<EducationalQualification>)query.getResultList();
	}
}
