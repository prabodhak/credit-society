package com.bank.service;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.MemberAccount;

@Service
@Transactional
public class TellerServiceImpl implements TellerService {

	@Override
	public void deposit(MemberAccount account, BigDecimal amount) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void withdrawal(MemberAccount account, BigDecimal amount) {
		
	}

	@Override
	public void accountOpening() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void printDepositeSlip() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePassbook(Long accountNumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void fundTransfer(Long fromAccount, Long beneficiaryAccountNo) {
		// TODO Auto-generated method stub
		
	}

}
