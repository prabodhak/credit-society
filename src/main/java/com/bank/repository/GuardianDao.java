package com.bank.repository;

import com.bank.model.Guardian;


public interface GuardianDao extends GenericDao<Guardian, Long>{

	void findGuardianByName(String name);
	
	void removeGuardian(Long guardianId);
}
