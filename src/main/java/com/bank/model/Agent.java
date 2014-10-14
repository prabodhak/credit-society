package com.bank.model;

import java.util.Collection;

import javax.persistence.Column;
import javax.validation.constraints.Digits;

import org.hibernate.validator.constraints.NotEmpty;

import com.bank.utils.EducationalQualification;

/**
 * 
 * 
 * @author Ajay
 *
 */
public class Agent extends Person {
	private Collection<String> WorkingArea;
	private EducationalQualification qualification;
	private Address address;
	
	@Column(name = "email_id")
	private String emailId;

	@Column(name = "mobile")
	@NotEmpty
	@Digits(fraction = 0, integer = 10)
	private String mobile;
}
