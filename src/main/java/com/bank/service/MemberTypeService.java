package com.bank.service;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.bank.model.MemberType;

public interface MemberTypeService {

	Collection<MemberType> findAllMemberTypes();
	
	void add(MemberType memberType) throws DataAccessException;
	
	void delete(Long id) throws DataAccessException;
}
