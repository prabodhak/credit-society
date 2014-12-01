package com.bank.service;

import java.util.List;

public interface MasterDataLoaderService {

	public List<String> getOccupations();
	public List<String> getRelations();
	public List<String> getMaritalStatusList();
	public List<String> getReligions();
	public List<String> getEducationalQualifications();
}