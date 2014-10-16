package com.bank.repository;

import java.util.ArrayList;

/**
 * This is base Dao interface which represent CRUD operations for all models in
 * this application. Each and every specific dao interface must extend this base
 * dao. The specific implementations of this dao will be in abstract class specific to
 * particular dao implementation like JPA, Hibernate, Spring-data-jpa or JDBC etc.
 * 
 * @author Ajay
 * 
 * @param <T>
 */
public interface Dao<T> {

	abstract Object findById(Long id);

	abstract void add(T entity);

	abstract void delete(Long id);

	abstract void save(T entity);

	abstract ArrayList<T> findAll();

	public Class<T> getDomainClass();

}
