package com.bank.repository;

import org.springframework.dao.DataAccessException;

import com.bank.model.Agent;

public interface AgentDao extends GenericDao<Agent, Long>{
	
	void remove(Long agentId) throws DataAccessException;
}
