package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Simple JavaBean domain object representing guardian details for minor account
 * or in case  nominee of an account is minor.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "guardian")
public class Guardian extends Person {

	@Column(name = "relationship")
	private Relation relationship;

	public Guardian() {
		// TODO Auto-generated constructor stub
	}
	
	public Relation getRelationship() {
		return relationship;
	}

	public void setRelationship(Relation relationship) {
		this.relationship = relationship;
	}

}
