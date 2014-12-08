package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Simple JavaBean domain object representing marital status. This represent
 * master table which contains static data in database. Currently we are not
 * doing any operation(except read) on this table from java code.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "Marital_Status")
public class MaritalStatus extends BaseEntity {

	@Column(name = "status")
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
		 * If the object is null or not a user then return false. 
		 */
		if(object == null || object.getClass() != this.getClass()) {
			return false;
		}
		
		/*
		 * If status is same of both marital status object then return true.
		 */
		MaritalStatus maritalStatus = (MaritalStatus) object;
		return maritalStatus.getStatus().equals(status);
					
	}
}
