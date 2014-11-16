package com.bank.model;

import java.math.BigDecimal;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Table;

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

@Entity
@Table(name="member")
public class Member extends Person {

	@Column(name="member_id")
	@NotEmpty
	private String memberId;

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
	
	@Column(name="educational_qualification")
	private String educationalQualification;
	
	@Column(name="uid")
	private String uid;
	
	@ElementCollection
	private Set<OtherAccountDetails> otherAccountDetails;
	
	@Column(name="creation_date")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private DateTime creationDate;
	
	@Column(name="active")
	@NotEmpty
	private boolean active;

	public Member() {
		// TODO Auto-generated constructor stub
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
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

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
}
