package com.bank.repository;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

/**
 * This is a hibernate implementation of base dao interface. All hibernate
 * implementation dao classes must extend this abstract class.
 * 
 * @author Ajay
 * 
 * @param <T>
 */
public class HibernateDao<E, K extends Serializable> implements
		GenericDao<E, K> {

	@PersistenceContext
	private EntityManager em;

	private Class<? extends E> daoType;
	
	public HibernateDao() {
		this.daoType = (Class<E>) ((ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	public E findById(K key) {
		return em.find(daoType, key);
	}

	public final void add(E entity) {
		em.persist(entity);
	}

	public final void delete(E entity) {
		em.remove(entity);
	}

	public final void save(E entity) {
		em.merge(entity);
	}

	public final List<E> findAll() {
		CriteriaQuery<E> criteria = (CriteriaQuery<E>) em.getCriteriaBuilder().createQuery(daoType);
		criteria.select(criteria.from(daoType));
		List<E> list = em.createQuery(criteria).getResultList();
		return list;
	}
}
