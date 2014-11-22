package com.bank.service;

import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.bank.model.Account;
import com.bank.model.Member;
import com.bank.repository.MemberDao;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {
	
	private MemberDao memberDao;
	
	@Autowired
	public MemberServiceImpl(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public Member findById(Long memberId) {
		return memberDao.findMemberById(memberId);
	}

	@Override
	public List<Member> finadAll() {
		return memberDao.findAllMember();
	}

	@Override
	public void save(Member member) throws DataAccessException {
		memberDao.saveMember(member);
	}
	
	@Override
	public void delete(Long memberId) throws DataAccessException {
		memberDao.deleteMember(memberId);
	}

	@Override
	public void delete(Member member) throws DataAccessException {
		memberDao.deleteMember(member);
	}

	@Override
	public Set<Member> findMemberByLastName(String lastName)
			throws DataAccessException {
		return memberDao.findMemberByLastName(lastName);
	}

	@Override
	public Set<Member> findMemberByMiddleName(String middleName)
			throws DataAccessException {
		return memberDao.findMemberByMiddleName(middleName);
	}

	@Override
	public Set<Member> findMemberByFirstName(String firsttName)
			throws DataAccessException {
		return memberDao.findMemberByFirstName(firsttName);
	}

	@Override
	public boolean markMemberInactive(String memberId) {
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
