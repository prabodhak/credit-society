package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="Educational_Qualification")
public class EducationalQualification extends BaseEntity {

	@Column(name="qualification_name")
	private String qualificationName;

	public String getQualificationName() {
		return qualificationName;
	}

	public void setQualificationName(String qualificationName) {
		this.qualificationName = qualificationName;
	}
}
