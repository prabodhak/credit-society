package com.bank.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.bank.model.MemberType;
import com.bank.repository.MemberTypeDao;

@Service
public class MemberTypeServiceImpl implements MemberTypeService {

	private MemberTypeDao memberTypeDao;
	
	@Autowired
	public MemberTypeServiceImpl(MemberTypeDao memberTypeDao) {
		this.memberTypeDao = memberTypeDao;
	}

	@Override
	public void add(MemberType memberType) throws DataAccessException {
		memberTypeDao.add(memberType);
	}

	@Override
	public void delete(Long id) throws DataAccessException {
		memberTypeDao.delete(id);	
	}

	@Override
	public Collection<MemberType> findAllMemberTypes() {
		return memberTypeDao.findAll();
	}
}
