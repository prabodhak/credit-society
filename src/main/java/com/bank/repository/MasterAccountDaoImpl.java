package com.bank.repository;

import org.springframework.dao.DataAccessException;

import com.bank.model.AccountMaster;

public class MasterAccountDaoImpl extends HibernateDao<AccountMaster> implements MasterAccountDao {

	public AccountMaster findByName(String name) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Class<AccountMaster> getDomainClass() {
		return AccountMaster.class;
	}

}
