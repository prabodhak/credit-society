package com.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.repository.MemberTypeDao;

@Service
public class MemberTypeServiceImpl implements MemberTypeService {

	private MemberTypeDao memberTypeDao;
	
	@Autowired
	public MemberTypeServiceImpl(MemberTypeDao memberTypeDao) {
		this.memberTypeDao = memberTypeDao;
	}
}
