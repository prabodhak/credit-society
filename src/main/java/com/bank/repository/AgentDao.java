package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.Agent;

public interface AgentDao {

	Agent findById(Long id);
	
	Collection<Agent> finadAll();
	
	void save(Agent agent) throws DataAccessException;
	
	void remove(Agent agent) throws DataAccessException;
}
