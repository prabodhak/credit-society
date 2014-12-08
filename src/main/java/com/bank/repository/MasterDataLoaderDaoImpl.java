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
	 * @see com.bank.repository.MasterDataLoaderDao#finadAllOccupations()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> finadAllOccupations() {
		String queryString = "select o.occupationName from Occupation o";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#finadAllRelations()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> finadAllRelations() {
		String queryString = "select r.relationshipName from Relation r";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#finadAllMaritalStatus()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> finadAllMaritalStatus() {
		String queryString = "select m.status from MaritalStatus m";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#finadAllReligion()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> finadAllReligion() {
		String queryString = "select r.religionName from Religion r";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#finadAllEducationalQualification()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> finadAllEducationalQualification() {
		String queryString = "select q.qualificationName from EducationalQualification q";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
	
	/* (non-Javadoc)
	 * @see com.bank.repository.MasterDataLoaderDao#finadAllGender()
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<String> finadAllGender() {
		String queryString = "select g.gender from Gender g";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}
}
