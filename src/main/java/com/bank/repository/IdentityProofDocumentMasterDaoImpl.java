package com.bank.repository;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.IdentityProofDocumentTypeMaster;

@Repository
public class IdentityProofDocumentMasterDaoImpl implements IdentityProofDocumentMasterDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public IdentityProofDocumentTypeMaster findById(Long documentId) {
		return em.find(IdentityProofDocumentTypeMaster.class, documentId);
	}

	@Override
	public Collection<IdentityProofDocumentTypeMaster> findAll() {
		String queryString = "from IdentityProofDocumentTypeMaster  ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}
	
	@Override
	public void save(
			IdentityProofDocumentTypeMaster identityProofDocumentTypeMaster)
			throws DataAccessException {
		if (identityProofDocumentTypeMaster.getId() == null) {
    		this.em.persist(identityProofDocumentTypeMaster);     		
    	}
    	else {
    		this.em.merge(identityProofDocumentTypeMaster);    
    	}		
	}

	@Override
	public void remove(IdentityProofDocumentTypeMaster identityProofDocumentTypeMaster) {
		em.remove(identityProofDocumentTypeMaster);
	}
}
