package com.bank.model;

import java.util.ArrayList;
import java.util.List;

public class Relations {

	List<Relation> relationshipList;

	public List<Relation> getRelationshipList() {
		if(relationshipList == null) {
			relationshipList = new ArrayList<>();
		}
		return relationshipList;
	}
}
