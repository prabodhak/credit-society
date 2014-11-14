package com.bank.repository;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.Agent;

@Repository
public class AgentDaoImpl implements AgentDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public Agent findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<Agent> finadAll() {
		String queryString = "from Agent ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}

	@Override
	public void save(Agent agent) throws DataAccessException {
		if(agent.isNew()) {
			em.persist(agent);
		}
		else {
			em.merge(agent);
		}
	}

	@Override
	public void remove(Long agentId) throws DataAccessException {
		Agent agent = em.find(Agent.class, agentId);
		em.remove(agent);
	}
	
	@Override
	public void remove(Agent agent) throws DataAccessException {
		em.remove(agent);
	}
}
