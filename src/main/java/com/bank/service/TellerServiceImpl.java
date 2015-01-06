package com.bank.service;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.exception.CashCerditExceedsException;
import com.bank.exception.InSufficientBalanaceException;
import com.bank.model.Account;
import com.bank.model.DepositAccountType;
import com.bank.model.Member;
import com.bank.repository.AccountDao;
import com.bank.repository.MemberAccountDao;
import com.bank.repository.TransactionDao;

@Service
@Transactional
public class TellerServiceImpl implements TellerService {

	private MemberAccountDao memberAccountDao;
	private AccountDao accountDao;
	private TransactionDao transactionDao;

	@Override
	public void deposit(Long accountNo, BigDecimal amount) {
		Account account = accountDao.findByAccountNo(accountNo);
		account.setAccountBalance(account.getAccountBalance().add(amount));
		account.setAvailableBalance(account.getAvailableBalance().add(amount));
		
		/*
		 * Add this transaction in the transaction table
		 */
		
	}
	
	public void cashDeposit(Long accountNo, BigDecimal amount) throws CashCerditExceedsException {
		Account account = accountDao.findByAccountNo(accountNo);
		if (account.getAccountType() instanceof DepositAccountType) {
			DepositAccountType accountType = (DepositAccountType) account.getAccountType();
			if(amount.compareTo(accountType.getCreditCashLimit()) > 0) {
				throw new CashCerditExceedsException();
			}	
		}
		deposit(accountNo, amount);
	}

	@Override
	public void withdrawal(Long accountNo, BigDecimal amount)
			throws InSufficientBalanaceException {
		Account account = accountDao.findByAccountNo(accountNo);

		if (amount.compareTo(account.getAvailableBalance()) > 0) {
			throw new InSufficientBalanaceException();
		}

		/*
		 * If this member has taken loan or be a guarantor for some loan account
		 * then he/she can't withdraw that much amount of money from saving
		 * account
		 */
		Member member = account.getMember();
		if (memberAccountDao.findById(member.getId()).isLoanLocked()) {

		}

		/*
		 * If everything is fine withdraw the money and set balance and
		 * available balance
		 */
		account.setAccountBalance(account.getAccountBalance().subtract(amount));
		account.setAvailableBalance(account.getAvailableBalance().subtract(
				amount));

		/*
		 * Add this transaction in the transaction table
		 */
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
	public void fundTransfer(Long fromAccount, Long beneficiaryAccountNo,
			BigDecimal amount) throws InSufficientBalanaceException {
		withdrawal(fromAccount, amount);
		deposit(beneficiaryAccountNo, amount);
	}

	@Override
	public void getAccountInfo(Long accountNo) {
		Account account = accountDao.findByAccountNo(accountNo);
		Member member = account.getMember();
	}

}
