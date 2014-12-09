package com.bank.repository;

import org.springframework.stereotype.Repository;

import com.bank.model.MemberType;

@Repository
public class MemberTypeDaoImpl extends HibernateDao<MemberType, Long> implements MemberTypeDao {

}
