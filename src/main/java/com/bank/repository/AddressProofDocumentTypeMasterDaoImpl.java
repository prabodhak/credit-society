package com.bank.repository;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.AddressProofDocumentTypeMaster;

@Repository
public class AddressProofDocumentTypeMasterDaoImpl implements AddressProofDocumentTypeMasterDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public AddressProofDocumentTypeMaster findById(Long documentId) {
		return em.find(AddressProofDocumentTypeMaster.class, documentId) ;
	}

	@Override
	public Collection<AddressProofDocumentTypeMaster> findAll() {
		String queryString = "from AddressProofDocumentTypeMaster ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}
	
	@Override
	public void save(
			AddressProofDocumentTypeMaster addressProofDocumentTypeMaster)
			throws DataAccessException {
		if (addressProofDocumentTypeMaster.getId() == null) {
    		this.em.persist(addressProofDocumentTypeMaster);     		
    	}
    	else {
    		this.em.merge(addressProofDocumentTypeMaster);    
    	}		
	}

	@Override
	public void remove(AddressProofDocumentTypeMaster addressProofDocumentTypeMaster) {
		em.remove(addressProofDocumentTypeMaster);
		
	}
}
