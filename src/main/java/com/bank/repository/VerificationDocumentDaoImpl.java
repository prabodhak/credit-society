package com.bank.repository;

import org.springframework.stereotype.Repository;

import com.bank.model.VerificationDocument;

@Repository
public class VerificationDocumentDaoImpl extends HibernateDao<VerificationDocument, Long> implements VerificationDocumentDao {

}
