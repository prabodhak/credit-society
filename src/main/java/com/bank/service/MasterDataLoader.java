package com.bank.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.EducationalQualification;
import com.bank.model.MaritalStatus;
import com.bank.model.Occupation;
import com.bank.model.Relation;
import com.bank.model.Religion;
import com.bank.repository.MasterDataLoaderDao;

@Service
@Transactional(readOnly=true)
public class MasterDataLoader implements MasterDataLoaderService {
	
	private MasterDataLoaderDao masterDataLoaderDao;

	private List<String> occupations = new ArrayList<String>(10);
	private List<String> relations = new ArrayList<String>(20);
	private List<String> maritalStatusList = new ArrayList<String>(10);
	private List<String> religions = new ArrayList<String>(5);
	private List<String> educationalQualifications = new ArrayList<String>(10);
	
	@Autowired
	public MasterDataLoader(MasterDataLoaderDao masterDataLoaderDao) {
		this.masterDataLoaderDao = masterDataLoaderDao;
		List<Occupation> occupationList = masterDataLoaderDao.finadAllOccupations();
		for(Occupation occupation : occupationList) {
			occupations.add(occupation.getOccupationName());
		}
		
		List<Relation> relationList = masterDataLoaderDao.finadAllRelations();
		for(Relation relation : relationList) {
			relations.add(relation.getRelationship());
		}
		
		List<MaritalStatus> maritalStatusList = masterDataLoaderDao.finadAllMaritalStatus();
		for(MaritalStatus maritalStatus : maritalStatusList) {
			this.maritalStatusList.add(maritalStatus.getStatus());
		}
		
		List<Religion> religionList = masterDataLoaderDao.finadAllReligion();
		for(Religion religion : religionList) {
			religions.add(religion.getReligionName());
		}
		
		List<EducationalQualification> educationalQualificationList = masterDataLoaderDao.finadAllEducationalQualification();
		for(EducationalQualification educationalQualification : educationalQualificationList) {
			educationalQualifications.add(educationalQualification.getQualificationName());
		}
	}

	public MasterDataLoaderDao getMasterDataLoaderDao() {
		return masterDataLoaderDao;
	}

	public List<String> getOccupations() {
		return occupations;
	}

	public List<String> getRelations() {
		return relations;
	}

	public List<String> getMaritalStatusList() {
		return maritalStatusList;
	}

	public List<String> getReligions() {
		return religions;
	}

	public List<String> getEducationalQualifications() {
		return educationalQualifications;
	}
	
}
