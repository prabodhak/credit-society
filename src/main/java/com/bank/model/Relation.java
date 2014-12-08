package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Simple JavaBean domain object representing relationship names. This represent
 * master table which contains static data in database. Currently we are not
 * doing any operation(except read) on this table from java code.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "relation")
public class Relation extends BaseEntity {

	@Column(name = "relationship_name")
	private String relationshipName;
	
	public Relation() {
		// TODO Auto-generated constructor stub
	}
	
	public String getRelationshipName() {
		return relationshipName;
	}

	public void setRelationshipName(String relationshipName) {
		this.relationshipName = relationshipName;
	}

	@Override
	public int hashCode() {
		
		int hash = 7;
		hash = 89 * hash + (this.relationshipName != null ? this.relationshipName.hashCode() : 0);
		return hash;
	}
	
	/**
	 * Check two <code>Relation</code> objects are same or not.
	 * 
	 * @param object
	 * 			the object for equality check
	 */
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
		 * If relationship name is same of both relationship object then return true.
		 */
		Relation relation = (Relation) object;
		return relation.getRelationshipName().equals(relationshipName);
	}
}
