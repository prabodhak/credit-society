package com.bank.service;

import java.util.Collection;
import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;

import com.bank.model.Account;
import com.bank.model.Member;

/**
 * 
 * @author Ajay
 *
 */

public interface MemberService {
	
	Member findById(Long memberId);
	
	Collection<Member>finadAll();
	
	void save(Member member) throws DataAccessException;
	
	void remove(Member member) throws DataAccessException;
	
	Set<Member> findMemberByLastName(String lastName) throws DataAccessException;
	
	Set<Member> findMemberByMiddleName(String middleName) throws DataAccessException;
	
	Set<Member> findMemberByFirstName(String firsttName) throws DataAccessException;
	
	boolean markMemberInactive(String memberId);
	
	boolean markMemberActive(Long memberId);
	
	List<Account> getAccounts(Long memberId);
	
	List<Account> getAccounts(Member member);
}
