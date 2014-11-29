package com.bank.model;

import java.math.BigDecimal;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotBlank;
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

@SuppressWarnings("serial")
@Entity
@Table(name="member")
public class Member extends Person {
	
	@Column(name = "first_name")
	@NotBlank
	protected String firstName;

	@Column(name = "middle_name")
	protected String middleName;

	@Column(name = "last_name")
	protected String lastName;

	@Column(name = "nick_name")
	protected String nickName;

	@Column(name="father_name")
	@NotEmpty
	private String fatherName;

	@Column(name="mother_maiden_name")
	@NotEmpty
	private String motherMaidenName;
	
	@Column(name="customer_type")
	private String customerType;
	
	@Column(name="nationality")
	private String nationality;
	
	@Column(name="religion")
	private String religion;
	
	@Column(name="category")
	private String category;
	
	@Column(name="marital_status")
	private String maritalStatus;
	
	@Column(name="occupations")
	private String occupation;
	
	@Column(name="income")
	private BigDecimal income;
	
	@Column(name="organization_name")
	private String organizationName;
	
	@Column(name="designation")
	private String designation;
	
	@OneToOne(cascade=CascadeType.ALL)
	private Address officeAddress;
	
	@Column(name="educational_qualification")
	private String educationalQualification;
	
	@Column(name="uid")
	private String uid;
	
	@Column(name="minor")
	private boolean minor;
	
	@Column(name="senior_citizen")
	private boolean seniorCitizen;
	
	@ElementCollection
	@JoinTable(name="member_other_account_details")
	private Set<OtherAccountDetails> otherAccountDetails;
	
	@Column(name="creation_date")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private DateTime creationDate;
	
	@OneToOne
	private Guardian guardian;
	
	@OneToOne
	private Introducer introducer;
	
	@Column(name="active")
	private boolean active;

	public Member() {
		// TODO Auto-generated constructor stub
	}

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
	
	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherMaidenName() {
		return motherMaidenName;
	}

	public void setMotherMaidenName(String motherMaidenName) {
		this.motherMaidenName = motherMaidenName;
	}

	public String getCustomerType() {
		return customerType;
	}

	public void setCustomerType(String customerType) {
		this.customerType = customerType;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public BigDecimal getIncome() {
		return income;
	}

	public void setIncome(BigDecimal income) {
		this.income = income;
	}

	public String getOrganizationName() {
		return organizationName;
	}

	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public Address getOfficeAddress() {
		return officeAddress;
	}

	public void setOfficeAddress(Address officeAddress) {
		this.officeAddress = officeAddress;
	}

	public String getEducationalQualification() {
		return educationalQualification;
	}

	public void setEducationalQualification(String educationalQualification) {
		this.educationalQualification = educationalQualification;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public boolean isMinor() {
		return minor;
	}

	public void setMinor(boolean minor) {
		this.minor = minor;
	}

	public boolean isSeniorCitizen() {
		return seniorCitizen;
	}

	public void setSeniorCitizen(boolean seniorCitizen) {
		this.seniorCitizen = seniorCitizen;
	}

	public Set<OtherAccountDetails> getOtherAccountDetails() {
		return otherAccountDetails;
	}

	public void setOtherAccountDetails(Set<OtherAccountDetails> otherAccountDetails) {
		this.otherAccountDetails = otherAccountDetails;
	}

	public DateTime getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(DateTime creationDate) {
		this.creationDate = creationDate;
	}

	public Guardian getGuardian() {
		return guardian;
	}

	public void setGuardian(Guardian guardian) {
		this.guardian = guardian;
	}

	public Introducer getIntroducer() {
		return introducer;
	}

	public void setIntroducer(Introducer introducer) {
		this.introducer = introducer;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
}
