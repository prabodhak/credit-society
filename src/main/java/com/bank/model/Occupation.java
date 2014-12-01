package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="occupation")
public class Occupation extends BaseEntity {

	@Column(name="occupation_name")
	private String occupationName;

	public String getOccupationName() {
		return occupationName;
	}

	public void setOccupationName(String occupationName) {
		this.occupationName = occupationName;
	}
}
