package com.bank.repository;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public Member findMemberById(Long MemberId) {
		return em.find(Member.class, MemberId);
	}

	@Override
	public void findMemberByName(String name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Member> findAllMember() {
		String queryString = "from Member ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}

	@Override
	public void deleteMember(Long memberId) {
		Member member = em.find(Member.class, memberId);
		em.remove(member);
	}

	@Override
	public void deleteMember(Member member) {
		em.remove(member);
	}

	@Override
	public void saveMember(Member member) {
		if(member.isNew()) {
			em.persist(member);
		}
		else {
			em.merge(member);
		}
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

}
