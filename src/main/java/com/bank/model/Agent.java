package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.bank.utils.EducationalQualification;

/**
 * This is a model class to represent a society agent. A agent who will work for
 * the society to get new customer and collects money from door to door.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "agent")
public class Agent extends Person {

	@Column(name = "educational_qualification")
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
