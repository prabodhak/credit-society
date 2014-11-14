package com.bank.repository;

import java.util.Collection;

import com.bank.model.AccountType;

/**
 * Repository class for {@link com.bank.model.AccountType} domain objects All method names are compliant with Spring Data naming
 * conventions so this interface can easily be extended for Spring Data
 * 
 * @author Ajay
 *
 */
public interface AccountTypeDao {
	
	/**
     * Retrieve <code>MasterAccount</code> from the data store by name, returning account whose name <i>starts</i>
     * with the given name.
     *
     * @param name Value to search for
     * @return a matching <code>AccountMaster</code>s (or a null if none found)
     */
	void findAccountTypeById(Long accountTypeId);
	void findAccountTypeByName(String name);
	Collection<AccountType> findAllAccountType();
	void removeAccountType(Long accountId);
	void removeAccountType(AccountType accountType);
	void saveAccountType(AccountType accountType);
	}
