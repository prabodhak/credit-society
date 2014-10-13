package com.bank.repository;

import org.springframework.dao.DataAccessException;

import com.bank.model.AccountMaster;
import com.bank.model.BaseEntity;

/**
 * Repository class for {@link com.bank.model.AccountMaster} domain objects All method names are compliant with Spring Data naming
 * conventions so this interface can easily be extended for Spring Data
 * 
 * @author Ajay
 *
 */
public interface AccountMasterDao {

	void delete();
	
	/**
     * Save an <code>AccountMaster</code> to the data store, either inserting or updating it.
     *
     * @param owner the <code>Master</code> to save
     * @see BaseEntity#isNew
     */
	void save(AccountMaster accountMaster) throws DataAccessException;
	
	/**
     * Retrieve an <code>AccountMaster</code> from the data store by id.
     *
     * @param id the id to search for
     * @return the <code>AccountMaster</code> if found
     * @throws org.springframework.dao.DataRetrievalFailureException
     *          if not found
     */
	AccountMaster getById() throws DataAccessException;
	
	/**
     * Retrieve <code>MasterAccount</code>s from the data store by last name, returning all owners whose last name <i>starts</i>
     * with the given name.
     *
     * @param name Value to search for
     * @return a <code>Collection</code> of matching <code>AccountMaster</code>s (or an empty <code>Collection</code> if none
     *         found)
     */
	AccountMaster findByName(String name) throws DataAccessException;
}
