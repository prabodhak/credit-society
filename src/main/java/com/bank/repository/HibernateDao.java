package com.bank.repository;

import org.hibernate.SessionFactory;

public interface HibernateDao {
	
	SessionFactory getSessionFactory();

	void setSessionFactory(SessionFactory sessionFactory);


}
