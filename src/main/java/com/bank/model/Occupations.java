package com.bank.model;

import java.util.ArrayList;
import java.util.List;

public class Occupations {

	private List<Occupation> occupations;

	public List<Occupation> getOccupations() {
		if(occupations == null) {
			occupations = new ArrayList<Occupation>();
		}
		return occupations;
	}
}
