package com.bank.model;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.validation.constraints.Digits;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Simple JavaBean domain object representing an person.
 * 
 * @author Ajay
 */
@MappedSuperclass
public class Person extends BaseEntity {

	@Column(name = "first_name")
	@NotBlank
	protected String firstName;

	@Column(name = "middle_name")
	protected String middleName;

	@Column(name = "last_name")
	protected String lastName;

	@Column(name = "nick_name")
	protected String nickName;

	@Column(name = "email_id")
	private String emailId;

	@Column(name = "mobile")
	@NotEmpty
	@Digits(fraction = 0, integer = 10)
	private String mobile;

	/*@Column(name = "mailing_address")
	@NotEmpty
	private Address mailingAddress;*/

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
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

	/*public Address getMailingAddress() {
		return mailingAddress;
	}

	public void setMailingAddress(Address mailingAddress) {
		this.mailingAddress = mailingAddress;
	}*/

}
