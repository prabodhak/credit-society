package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Simple JavaBean domain object representing educational qualification. This
 * represent master table which contains static data in database. Currently we
 * are not doing any operation(except read) on this table from java code.
 * 
 * @author Ajay Gupta
 * @since 1.0
 */

@SuppressWarnings("serial")
@Entity
@Table(name = "Educational_Qualification")
public class EducationalQualification extends BaseEntity {

	@Column(name = "qualification_name")
	private String qualificationName;

	public String getQualificationName() {
		return qualificationName;
	}

	public void setQualificationName(String qualificationName) {
		this.qualificationName = qualificationName;
	}
}
