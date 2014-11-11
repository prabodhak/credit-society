package com.bank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bank.model.Address;
import com.bank.model.Member;


public class MemberDaoImpl extends HibernateDao<Member> implements MemberDao {

	public boolean updateAddress(Address newAddress) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateEmailId(String newEmail) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateMobile(String newMobile) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean markMemberInactive(String memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean markMemberActive(String memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<String> getAccounts(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<String> getAccounts(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Class<Member> getDomainClass() {
		return Member.class;
	}

}
