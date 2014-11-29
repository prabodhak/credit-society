package com.bank.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;
import javax.validation.constraints.Digits;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Simple JavaBean domain object representing an person.
 * 
 * @author Ajay
 */
@SuppressWarnings("serial")
@MappedSuperclass
public class Person extends BaseEntity {

	@Column(name="name")
	private String name;
	
	@Column(name="gender")
	private String gender;

	@Column(name = "email_id")
	private String emailId;

	@Column(name = "mobile")
	@NotEmpty
	@Digits(fraction = 0, integer = 10)
	private String mobile;

	@OneToOne(cascade=CascadeType.ALL, optional=true)
	private Address localAddress;
	
	@OneToOne(cascade=CascadeType.ALL, optional=true)
	private Address permanentAddress;

	@Column(name="birth_date")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private DateTime birthDate;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Address getLocalAddress() {
		return localAddress;
	}

	public void setLocalAddress(Address localAddress) {
		this.localAddress = localAddress;
	}

	public Address getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(Address permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public DateTime getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(DateTime birthDate) {
		this.birthDate = birthDate;
	}
}
