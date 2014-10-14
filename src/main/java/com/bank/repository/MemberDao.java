package com.bank.repository;

import java.util.List;

import com.bank.model.Address;
import com.bank.model.Member;

public interface MemberDao extends Dao<Member>{
	boolean updateAddress(Address newAddress);
	boolean updateEmailId(String newEmail);
	boolean updateMobile(String newMobile);
	boolean markMemberInactive(String memberId);
	boolean markMemberActive(String memberId);
	List<String> getAccounts(String memberId);
	List<String> getAccounts(Member member);
}
