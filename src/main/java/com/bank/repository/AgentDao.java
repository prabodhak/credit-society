package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.Agent;

public interface AgentDao {

	Agent findById(Long agentid);
	
	Collection<Agent> findAll();
	
	void save(Agent agent) throws DataAccessException;
	
	void remove(Long agentId) throws DataAccessException;
	
	void remove(Agent agent) throws DataAccessException;
}
