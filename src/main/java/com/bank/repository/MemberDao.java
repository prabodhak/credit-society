package com.bank.repository;

import java.util.List;
import java.util.Set;

import org.springframework.dao.DataAccessException;

import com.bank.model.BaseEntity;
import com.bank.model.Member;

/**
 * Repository class for <code>Member</code> domain objects.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */
public interface MemberDao extends GenericDao<Member, Long>{

	void findMemberByName(String name) throws DataAccessException;

	Set<Member> findMemberByLastName(String lastName)
			throws DataAccessException;

	Set<Member> findMemberByMiddleName(String middleName)
			throws DataAccessException;

	Set<Member> findMemberByFirstName(String firsttName)
			throws DataAccessException;

	/**
	 * Delete a <code>Member</code> from the data store by member id.
	 * 
	 * @param memberId
	 *            the id to delete the member
	 */
	void deleteMember(Long memberId);
	
	List<Member> getMembersByType(char memberType);
}