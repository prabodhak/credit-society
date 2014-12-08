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
		
		masterTableData.getMap().put("relations", masterDataLoaderDao.finadAllRelations());
		masterTableData.getMap().put("religions", masterDataLoaderDao.finadAllReligion());
		masterTableData.getMap().put("occupations", masterDataLoaderDao.finadAllOccupations());
		masterTableData.getMap().put("qualifications", masterDataLoaderDao.finadAllEducationalQualification());
		masterTableData.getMap().put("genders", masterDataLoaderDao.finadAllGender());
		masterTableData.getMap().put("maritalStatus", masterDataLoaderDao.finadAllMaritalStatus());
		
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
