package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="religion")
public class Religion extends BaseEntity {

	@Column(name="religion_name")
	private String religionName;

	public String getReligionName() {
		return religionName;
	}

	public void setReligionName(String religionName) {
		this.religionName = religionName;
	}
}
