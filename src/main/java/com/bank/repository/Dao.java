package com.bank.repository;

import java.util.ArrayList;

import org.hibernate.SessionFactory;

public interface Dao<T> {
	SessionFactory getSessionFactory();

	void setSessionFactory(SessionFactory sessionFactory);

	abstract Object getById(Long id);

	abstract void add(T entity);

	abstract void remove(Long id);

	abstract void save(T entity);

	abstract ArrayList<T> findAll();

	public Class<T> getDomainClass();

}
