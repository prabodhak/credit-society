package com.bank.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MasterTableData {
	
	Map<String, List<String>> map = new HashMap<String, List<String>>();
	
	public MasterTableData() {
		System.out.println("Inside master table data constructor");
	}

	public Map<String, List<String>> getMap() {
		return map;
	}

	public void setMap(Map<String, List<String>> map) {
		this.map = map;
	}

}
