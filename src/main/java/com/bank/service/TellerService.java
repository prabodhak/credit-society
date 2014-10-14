package com.bank.service;

public interface TellerService {

	void deposite(double amount);
	void withdrawal(double amount);
	void accountOpening();
	void printDepositeSlip();
	void updatePassbook();
	void transferMoney();
}
