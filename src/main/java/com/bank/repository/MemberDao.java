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
public interface MemberDao {

	/**
	 * Retrieve an <code>Member</code> from the data store by id.
	 * 
	 * @param memberId
	 *            the id to search for
	 * @return the <code>Member</code> if found
	 * @throws org.springframework.dao.DataRetrievalFailureException
	 *             if not found
	 */
	Member findMemberById(Long memberId) throws DataAccessException;

	void findMemberByName(String name) throws DataAccessException;

	Set<Member> findMemberByLastName(String lastName)
			throws DataAccessException;

	Set<Member> findMemberByMiddleName(String middleName)
			throws DataAccessException;

	Set<Member> findMemberByFirstName(String firsttName)
			throws DataAccessException;

	List<Member> findAllMember() throws DataAccessException;

	/**
	 * Delete a <code>Member</code> from the data store by member id.
	 * 
	 * @param memberId
	 *            the id to delete the member
	 */
	void deleteMember(Long memberId);

	/**
	 * Delete a <code>Member</code> from the data store by member.
	 * 
	 * @param member
	 *            the member object to delete the member
	 */
	void deleteMember(Member member);

	/**
	 * Save a <code>Member</code> to the data store, either inserting or
	 * updating it.
	 * 
	 * @param member
	 *            the <code>Member</code> to save
	 * @see BaseEntity#isNew
	 */
	void saveMember(Member member) throws DataAccessException;
}