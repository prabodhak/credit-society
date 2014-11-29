package com.bank.model;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.hibernate.validator.constraints.NotBlank;

/**
 * Simple JavaBean domain object adds a name property to <code>BaseEntity</code>
 * . Used as a base class for objects needing these properties.
 * 
 * @author Ajay
 * 
 */
@SuppressWarnings("serial")
@MappedSuperclass
public class NamedEntity extends BaseEntity {

	@Column(name = "name")
	@NotBlank
	private String name;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public NamedEntity() {
		// TODO Auto-generated constructor stub
	}
	
	public NamedEntity(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return this.getName();
	}

}
