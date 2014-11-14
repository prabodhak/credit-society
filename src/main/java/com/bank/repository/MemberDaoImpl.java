package com.bank.repository;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.bank.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void findMemberById(Long MemberId) {
		em.find(Member.class, MemberId);
	}

	@Override
	public void findMemberByName(String name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Collection<Member> findAllMember() {
		String queryString = "from Member ";
		Query query = em.createQuery(queryString);
		return query.getResultList();
	}

	@Override
	public void removeMember(Long memberId) {
		Member member = em.find(Member.class, memberId);
		em.remove(member);
	}

	@Override
	public void removeMember(Member member) {
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

}
