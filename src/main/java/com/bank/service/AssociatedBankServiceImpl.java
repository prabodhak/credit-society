package com.bank.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.AssociatedBank;
import com.bank.repository.AssociatedBankDao;

@Service
@Transactional
public class AssociatedBankServiceImpl implements AssociatedBankService{

	private AssociatedBankDao associatedBankDao;
	
	@Autowired
	public AssociatedBankServiceImpl(AssociatedBankDao associatedBankDao) {
		this.associatedBankDao = associatedBankDao;
	}
	@Override
	public Collection<AssociatedBank> findAllAssociatedBanks() {
		return associatedBankDao.findAll();
	}

	@Override
	public void add(AssociatedBank associatedBank) throws DataAccessException {
		associatedBankDao.add(associatedBank);
	}

	@Override
	public void delete(Long id) throws DataAccessException {
		associatedBankDao.delete(id);
	}
	@Override
	public AssociatedBank findAssociatedBank(Long id) {
		return associatedBankDao.findById(id);
	}
	@Override
	public void save(AssociatedBank associatedBank) throws DataAccessException {
		associatedBankDao.save(associatedBank);
	}

}
