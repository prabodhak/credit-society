package com.bank.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.MemberType;
import com.bank.repository.MemberTypeDao;

@Service
@Transactional
public class MemberTypeServiceImpl implements MemberTypeService {

	private MemberTypeDao memberTypeDao;
	
	@Autowired
	public MemberTypeServiceImpl(MemberTypeDao memberTypeDao) {
		this.memberTypeDao = memberTypeDao;
	}
	
	@Override
	public MemberType findMemberType(Long id) throws DataAccessException {
		return memberTypeDao.findById(id);
	}

	@Override
	public void add(MemberType memberType) throws DataAccessException {
		memberTypeDao.add(memberType);
	}


	@Override
	public void save(MemberType memberType) throws DataAccessException {
		memberTypeDao.save(memberType);
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
