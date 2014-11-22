package com.bank.utils;

public enum Relation {

	NONE(null),
	FATHER("Father"),
	MOTHER("Mother"),
	BROTHER("Brother"),
	SISTER("Sister"),
	HUSBAND("Husband"),
	WIFE("Wife"),
	SON("Son"),
	DAUGHTER("Daughter"),
	FATHER_IN_LAW("Father in Law"),
	MOTHER_IN_LAW("Mother in Law"),
	BROTHER_IN_LAW("Brother in Law"),
	SISTER_IN_LAW("Sister inLaw"),
	SON_IN_LAW("Son in Law"),
	DAUGHTER_INLAW("Daughter in Law"),
	GRAND_FATHER("Grandfather"),
	GRAND_MOTHER("Grandmother"),
	GRAND_SON("Grandson"),
	GRAND_DAUGHTER("Granddaughter");
	
	private String relationName;
	
	private Relation(String relationName) {
		this.relationName = relationName;
	}
	
	public String getRelationName() {
		return relationName;
	}
}
