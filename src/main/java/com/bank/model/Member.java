package com.bank.model;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

@MappedSuperclass
public class Member extends Person {

	@Column(name = "member_id")
	@NotEmpty
	private String memberId;

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
