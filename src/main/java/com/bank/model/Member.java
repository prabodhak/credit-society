package com.bank.model;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Member class represent any kind of member like customer, share holders, etc.
 * This class will not contain any account related data, it only holds personal
 * information like name address , DOB, and contact details.
 * 
 * @author Ajay
 * 
 */
@MappedSuperclass
public class Member extends Person {

	@Column(name = "member_id")
	@NotEmpty
	private String memberId;

	@Column(name = "father_name")
	@NotEmpty
	private String fatherName;

	@Column(name = "mother_name")
	@NotEmpty
	private String motherName;

	@Column(name = "local_address")
	@NotEmpty
	private Address localAddress;

	@Column(name = "permanent_address")
	@NotEmpty
	private Address permanentAddress;

	@Column(name = "active")
	@NotEmpty
	private boolean active;

	@Column(name = "birth_date")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private DateTime birthDate;

	public Member() {
		// TODO Auto-generated constructor stub
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getMemberId() {
		return memberId;
	}

	public Address getPermanentAddress() {
		return permanentAddress;
	}

	public DateTime getBirthDate() {
		return birthDate;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public void setPermanentAddress(Address permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public void setBirthDate(DateTime birthDate) {
		this.birthDate = birthDate;
	}

}
