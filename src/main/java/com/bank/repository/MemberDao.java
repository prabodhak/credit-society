package com.bank.repository;

import java.util.Collection;

import com.bank.model.Member;

/**
 * 
 * @author Ajay
 *
 */
public interface MemberDao {	
	void findMemberById(Long MemberId);
	void findMemberByName(String name);
	Collection<Member> findAllMember();
	void removeMember(Long memberId);
	void removeMember(Member member);
	void saveMember(Member member);
}
