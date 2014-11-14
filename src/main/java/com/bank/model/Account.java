package com.bank.model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 
 * @author Ajay
 *
 */
@Entity
@Table(name="account")
public class Account extends BaseEntity {

	BigDecimal balance;
	/*
	 * Amount which you can withdraw right now
	 */
	BigDecimal availableBalance;
	
	/*
	 * Amount which is pending for some kind of approval like cheque clearance
	 */
	BigDecimal unclearedFunds;	
}
