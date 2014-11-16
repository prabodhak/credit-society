package com.bank.repository;

import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;

import com.bank.model.Member;

/**
 * 
 * @author Ajay
 * 
 */
public interface MemberDao {
	Member findMemberById(Long MemberId);

	void findMemberByName(String name);

	Set<Member> findMemberByLastName(String lastName)
			throws DataAccessException;

	Set<Member> findMemberByMiddleName(String middleName)
			throws DataAccessException;

	Set<Member> findMemberByFirstName(String firsttName)
			throws DataAccessException;

	List<Member> findAllMember();

	void deleteMember(Long memberId);

	void deleteMember(Member member);

	void saveMember(Member member);
}