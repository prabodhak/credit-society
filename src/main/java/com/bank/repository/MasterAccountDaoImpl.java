package com.bank.repository;

import org.springframework.dao.DataAccessException;

import com.bank.model.MasterAccount;

public class MasterAccountDaoImpl extends HibernateDao<MasterAccount> implements MasterAccountDao {

	public MasterAccount findByName(String name) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Class<MasterAccount> getDomainClass() {
		return MasterAccount.class;
	}

}
