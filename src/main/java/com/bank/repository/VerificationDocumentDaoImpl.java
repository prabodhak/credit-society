package com.bank.repository;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.VerificationDocument;

@Repository
public class VerificationDocumentDaoImpl implements VerificationDocumentDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public VerificationDocument findById(Long documentId) {
		return em.find(VerificationDocument.class, documentId) ;
	}

	@Override
	public Collection<VerificationDocument> findAll() {
		String queryString = "from VerificationDocument ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}
	
	@Override
	public void save(
			VerificationDocument verificationDocument)
			throws DataAccessException {
		if (verificationDocument.isNew()) {
    		this.em.persist(verificationDocument);     		
    	}
    	else {
    		this.em.merge(verificationDocument);    
    	}		
	}

	@Override
	public void remove(VerificationDocument verificationDocument) {
		em.remove(verificationDocument);
		
	}
}
