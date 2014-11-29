package com.bank.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Represent a system user who can do operations for this organization
 * 
 * @author Ajay
 * 
 */
@SuppressWarnings("serial")
@Entity
@Table(name="user")
public class User extends Person {

	@NotNull
	@Size(min=4, max=15)
	private String username;
	
	@NotNull
	@Min(8)
	private String password;

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
