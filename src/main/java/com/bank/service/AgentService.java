package com.bank.service;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.Agent;

public interface AgentService {

	Agent findById(Long agentId);
	
	Collection<Agent>findAll();
	
	void save(Agent agent) throws DataAccessException;
	
	void remove(Agent agent) throws DataAccessException;
}
