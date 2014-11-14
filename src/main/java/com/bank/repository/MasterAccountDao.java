package com.bank.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.AccountMaster;
import com.bank.model.VerificationDocument;

/**
 * Repository class for {@link com.bank.model.AccountMaster} domain objects All method names are compliant with Spring Data naming
 * conventions so this interface can easily be extended for Spring Data
 * 
 * @author Ajay
 *
 */
public interface MasterAccountDao {
	
	/**
     * Retrieve <code>MasterAccount</code> from the data store by name, returning account whose name <i>starts</i>
     * with the given name.
     *
     * @param name Value to search for
     * @return a matching <code>AccountMaster</code>s (or a null if none found)
     */
	AccountMaster findByName(String name) throws DataAccessException;
	
	VerificationDocument findById(Long documentId);
	
	Collection<VerificationDocument> findAll();

	void save(VerificationDocument verificationDocument)
			throws DataAccessException;
	
	void remove(VerificationDocument verificationDocument);
}
