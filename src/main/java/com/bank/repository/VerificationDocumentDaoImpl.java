package com.bank.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.bank.model.VerificationDocument;

@Repository
public class VerificationDocumentDaoImpl extends HibernateDao<VerificationDocument, Long> implements VerificationDocumentDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public List<String> findAllIdentityProofDocumentsName() {
		String queryString = "select v.name from VerificationDocument v where v.documentType='Identity Proof'";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}

	@Override
	public List<String> findAllAddressProofDocumentsName() {
		String queryString = "select v.name from VerificationDocument v where v.documentType='Address Proof'";
		Query query = em.createQuery(queryString);
		return (List<String>)query.getResultList();
	}

	@Override
	public List<VerificationDocument> findAllDocumentsByType(String documentType) {
		String queryString = "FROM VerificationDocument v WHERE v.documentType = :documentType";
		TypedQuery<VerificationDocument> query = em.createQuery(queryString, VerificationDocument.class);
		query.setParameter("documentType", documentType);
		return (List<VerificationDocument>)query.getResultList();
	}

}
