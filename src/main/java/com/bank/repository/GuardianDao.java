package com.bank.repository;

import java.util.Collection;

import com.bank.model.Guardian;

public interface GuardianDao {

	void findGuardianById(Long GuardianId);
	
	void findGuardianByName(String name);
	
	Collection<Guardian> findAllGuardian();
	
	void removeGuardian(Long guardianId);
	
	void removeGuardian(Guardian guardian);
	
	void saveGuardian(Guardian guardian);
}
