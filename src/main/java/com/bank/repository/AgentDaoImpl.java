package com.bank.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.Agent;

@Repository
public class AgentDaoImpl extends HibernateDao<Agent, Long> implements AgentDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void remove(Long agentId) throws DataAccessException {
		Agent agent = em.find(Agent.class, agentId);
		em.remove(agent);
	}

}
