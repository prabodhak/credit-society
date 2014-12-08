package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

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

	@Column(name = "agent_code")
	private Long agentCode;

	@Column(name = "educational_qualification")
	private EducationalQualification educationalQualification;

	public Agent() {
		// TODO Auto-generated constructor stub
	}

	public Long getAgentCode() {
		return agentCode;
	}

	public void setAgentCode(Long agentCode) {
		this.agentCode = agentCode;
	}

	public EducationalQualification getEducationalQualification() {
		return educationalQualification;
	}

	public void setEducationalQualification(
			EducationalQualification educationalQualification) {
		this.educationalQualification = educationalQualification;
	}
	
	@Override
	public int hashCode() {
		
		int hash = 7;
		hash = 89 * hash + (this.agentCode != null ? this.agentCode.hashCode() : 0);
		return hash;
	}
	
	@Override
	public boolean equals(Object object) {
		/*
		 * If it is same object then return true.
		 */
		if(object == this) {
			return true;
		}
		
		/*
		 * If the object is null or not an account then return false. 
		 */
		if(object == null || object.getClass() != this.getClass()) {
			return false;
		}
		
		/*
		 * If agent code is same of both agent object then return true.
		 */
		Agent agent = (Agent) object;
		return agent.getAgentCode().equals(agentCode);
	}
}
