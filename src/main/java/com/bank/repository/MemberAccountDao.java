package com.bank.repository;

import com.bank.model.Member;
import com.bank.model.MemberAccount;

public interface MemberAccountDao extends GenericDao<MemberAccount, Long>{

	Member getMemberInfoByAccountNo();
}
