package com.bank.repository;

import java.util.ArrayList;

public interface Dao<T> {
	
	abstract Object findById(Long id);

	abstract void add(T entity);

	abstract void delete(Long id);

	abstract void save(T entity);

	abstract ArrayList<T> findAll();

	public Class<T> getDomainClass();

}
