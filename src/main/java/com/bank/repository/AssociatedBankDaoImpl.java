package com.bank.repository;

import org.springframework.stereotype.Repository;

import com.bank.model.AssociatedBank;

@Repository
public class AssociatedBankDaoImpl extends HibernateDao<AssociatedBank, Long> implements AssociatedBankDao {

}
