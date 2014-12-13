package com.bank.repository;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.Member;

@Repository
public class MemberDaoImpl extends HibernateDao<Member, Long> implements
		MemberDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void findMemberByName(String name) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMember(Long memberId) {
		Member member = em.find(Member.class, memberId);
		em.remove(member);
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
	public Set<Member> findMemberByFirstName(String firsttName) {
		String queryString = "Select from Member m where m.firstNumber";
		return null;
	}

	@Override
	public List<Member> getMembersByType(char memberType) {
		// TODO Auto-generated method stub
		return null;
	}

}
