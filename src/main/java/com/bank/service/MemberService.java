package com.bank.service;

import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;

import com.bank.model.Address;
import com.bank.model.Member;

/**
 * 
 * @author Ajay
 *
 */
public interface MemberService {
	Set<Member> findMemberByLastName(String lastName) throws DataAccessException;
	Set<Member> findMemberByMiddleName(String middleName) throws DataAccessException;
	Set<Member> findMemberByFirstName(String firsttName) throws DataAccessException;
	Set<Member> findByAddress(String address);
	boolean updateAddress(Address newAddress);
	boolean updateEmailId(String newEmail);
	boolean updateMobile(String newMobile);
	boolean markMemberInactive(String memberId);
	boolean markMemberActive(String memberId);
	List<String> getAccounts(String memberId);
	List<String> getAccounts(Member member);
	void saveMember(Member member);
	Member findMemberById(int memberId);	
}
