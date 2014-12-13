package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Simple JavaBean domain object representing occupation name. This represent
 * master table which contains static data in database. Currently we are not
 * doing any operation(except read) on this table from java code.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "occupation")
public class Occupation extends BaseEntity {

	@Column(name = "occupation_name")
	private String occupationName;

	public String getOccupationName() {
		return occupationName;
	}

	public void setOccupationName(String occupationName) {
		this.occupationName = occupationName;
	}
}
