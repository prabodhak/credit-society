package com.bank.repository;

import java.util.List;

public interface MasterDataLoaderDao {

	List<String> finadAllOccupations();

	List<String> finadAllRelations();

	List<String> finadAllMaritalStatus();

	List<String> finadAllReligion();

	List<String> finadAllEducationalQualification();

	List<String> finadAllGender();

}