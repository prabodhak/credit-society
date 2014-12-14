package com.bank.service;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.AssociatedBank;

public interface AssociatedBankService {

	Collection<AssociatedBank> findAllAssociatedBanks();
	
	void add(AssociatedBank associatedBank) throws DataAccessException;
	
	void delete(Long id) throws DataAccessException;
}
