package com.bank.service;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.model.AccountMaster;
import com.bank.repository.MasterAccountDao;

@Service
public class MasterAccountServiceImpl implements MasterAccountService {

	private MasterAccountDao masterAccountDao;
	
	@Autowired
	public MasterAccountServiceImpl(MasterAccountDao masterAccountDao) {
		this.masterAccountDao = masterAccountDao;
	}
	
	@Transactional
	public void deleteAccount(String accountId) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void saveAccount(AccountMaster accountMaster) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void findAccountById() {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void findAccountByName(String name) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public Collection<Object> findAll() {
		// TODO Auto-generated method stub
		return null;
	}	
}
