package com.bank.repository;

import org.springframework.dao.DataAccessException;

import com.bank.model.MasterAccount;

/**
 * Repository class for {@link com.bank.model.MasterAccount} domain objects All method names are compliant with Spring Data naming
 * conventions so this interface can easily be extended for Spring Data
 * 
 * @author Ajay
 *
 */
public interface MasterAccountDao extends Dao<MasterAccount>{
	
	/**
     * Retrieve <code>MasterAccount</code> from the data store by name, returning account whose name <i>starts</i>
     * with the given name.
     *
     * @param name Value to search for
     * @return a matching <code>AccountMaster</code>s (or a null if none found)
     */
	MasterAccount findByName(String name) throws DataAccessException;
}
