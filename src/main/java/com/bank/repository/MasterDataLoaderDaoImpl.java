package com.bank.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

@Repository
public class MasterDataLoaderDaoImpl implements MasterDataLoaderDao {

	@PersistenceContext
	EntityManager em;
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#findAllOccupations()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> findAllOccupations() {
		String queryString = "select o.occupationName from Occupation o";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#findAllRelations()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> findAllRelations() {
		String queryString = "select r.relationshipName from Relation r";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#findAllMaritalStatus()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> findAllMaritalStatus() {
		String queryString = "select m.status from MaritalStatus m";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#findAllReligion()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> findAllReligion() {
		String queryString = "select r.religionName from Religion r";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#findAllEducationalQualification()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> findAllEducationalQualification() {
		String queryString = "select q.qualificationName from EducationalQualification q";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#findAllGender()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> findAllGender() {
		String queryString = "select g.gender from Gender g";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}

	@Override
	public List<String> findAllInterestCalculationMode() {
		String queryString = "select i.mode from InterestCalculationMode i";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}

	@Override
	public List<String> findAllPenalityCalculationMode() {
		String queryString = "select p.mode from PenaltyCalculationMode p";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}

	@Override
	public List<String> findAllVerificationDocumentTypes() {
		String queryString = "select v.documentType from VerificationDocumentType v";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
}
