package com.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.MasterTableData;
import com.bank.repository.MasterDataLoaderDao;

@Service
@Transactional(readOnly=true)
public class MasterDataLoaderServiceImpl implements MasterDataLoaderService {
	
	private MasterDataLoaderDao masterDataLoaderDao;
	private MasterTableData masterTableData;

	@Autowired
	public MasterDataLoaderServiceImpl(MasterDataLoaderDao masterDataLoaderDao) {
		this.masterDataLoaderDao = masterDataLoaderDao;
		masterTableData = new MasterTableData();
		
		masterTableData.getMap().put("relations", masterDataLoaderDao.findAllRelations());
		masterTableData.getMap().put("religions", masterDataLoaderDao.findAllReligion());
		masterTableData.getMap().put("occupations", masterDataLoaderDao.findAllOccupations());
		masterTableData.getMap().put("qualifications", masterDataLoaderDao.findAllEducationalQualification());
		masterTableData.getMap().put("genders", masterDataLoaderDao.findAllGender());
		masterTableData.getMap().put("maritalStatus", masterDataLoaderDao.findAllMaritalStatus());
		masterTableData.getMap().put("penaltyCalculationMode", masterDataLoaderDao.findAllPenalityCalculationMode());
		masterTableData.getMap().put("interestCalculationMode", masterDataLoaderDao.findAllInterestCalculationMode());
		masterTableData.getMap().put("verificationDocumentTypes", masterDataLoaderDao.findAllVerificationDocumentTypes());
	}

	public MasterDataLoaderDao getMasterDataLoaderDao() {
		return masterDataLoaderDao;
	}

	public MasterTableData getMasterTableData() {
		return masterTableData;
	}

	public void setMasterTableData(MasterTableData masterTableData) {
		this.masterTableData = masterTableData;
	}
	
}
