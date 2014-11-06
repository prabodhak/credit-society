package com.bank.repository;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * This is a hibernate implementation of base dao interface. All hibernate
 * implementation dao classes must extend this abstract class.
 * 
 * @author Ajay
 * 
 * @param <T>
 */
public abstract class HibernateDao<T> implements Dao<T> {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Object findById(Long id) {

		return sessionFactory.getCurrentSession().get(getDomainClass(), id);
	}

	public final void add(T entity) {

		sessionFactory.getCurrentSession().save(entity);
	}

	public final void delete(Long id) {

		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().get(getDomainClass(), id));
		sessionFactory.getCurrentSession().flush();

	}

	public final void save(T entity) {
		sessionFactory.getCurrentSession().update(entity);
	}

	public final ArrayList<T> findAll() {

		// sessionFactory.getCurrentSession()
		return null;
	}

	abstract public Class<T> getDomainClass();

}
