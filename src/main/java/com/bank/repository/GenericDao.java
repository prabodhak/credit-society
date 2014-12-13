package com.bank.repository;

import java.io.Serializable;
import java.util.List;

import org.hibernate.exception.DataException;

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
public interface GenericDao<E, K extends Serializable> {

	/**
	 * Retrieve an <code>Entity</code> from the data store by id.
	 * 
	 * @param key
	 *            the key to search for
	 * @return the <code>Entity</code> if found
	 * @throws org.springframework.dao.DataRetrievalFailureException
	 *             if not found
	 */
	E findById(K key) throws DataException;

	void add(E entity);

	/**
	 * Delete a <code>Entity</code> from the data store by entity.
	 * 
	 * @param entity
	 *            the entity object to delete the entity
	 */
	void delete(E entity);

	/**
	 * Save a <code>Entity</code> to the data store, either inserting or
	 * updating it.
	 * 
	 * @param entity
	 *            the <code>Entity</code> to save
	 */
	void save(E entity);

	List<E> findAll();
}
