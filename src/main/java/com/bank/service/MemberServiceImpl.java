package com.bank.service;

import java.util.Collection;
import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.bank.model.Account;
import com.bank.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Override
	public Member findById(Long memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<Member> finadAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Member member) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Member member) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Set<Member> findMemberByLastName(String lastName)
			throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<Member> findMemberByMiddleName(String middleName)
			throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<Member> findMemberByFirstName(String firsttName)
			throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean markMemberInactive(String memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean markMemberActive(Long memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Account> getAccounts(Long memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Account> getAccounts(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

}
