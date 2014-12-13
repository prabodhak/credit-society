package com.bank.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Represent a system user who can do operations for this organization
 * 
 * @author Ajay Gupta
 * @since 1.0
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
	
	@Override
	public int hashCode() {
		
		int hash = 7;
		hash = 89 * hash + (this.username != null ? this.username.hashCode() : 0);
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
		 * If the object is null or not a user then return false. 
		 */
		if(object == null || object.getClass() != this.getClass()) {
			return false;
		}
		
		/*
		 * If username is same of both user object then return true.
		 */
		User user = (User) object;
		return user.getUsername().equals(username);
	}
}
