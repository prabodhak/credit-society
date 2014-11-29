package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.bank.utils.EducationalQualification;

/**
 * 
 * 
 * @author Ajay
 *
 */

@SuppressWarnings("serial")
@Entity
@Table(name="agent")
public class Agent extends Person {
	
	@Column(name="educational_qualification")
	private EducationalQualification educationalQualification;
	
	public Agent() {
		// TODO Auto-generated constructor stub
	}

	public EducationalQualification getEducationalQualification() {
		return educationalQualification;
	}

	public void setEducationalQualification(
			EducationalQualification educationalQualification) {
		this.educationalQualification = educationalQualification;
	}
}
