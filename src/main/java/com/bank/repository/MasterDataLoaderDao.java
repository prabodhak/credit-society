package com.bank.repository;

import java.util.List;

public interface MasterDataLoaderDao {

	/**
	 * Get all the listed occupations in master table.
	 * @return
	 * 		list of occupation names
	 */
	List<String> findAllOccupations();

	/**
	 * Get all the listed relations in master table.
	 * @return
	 * 		list of relation names
	 */
	List<String> findAllRelations();

	/**
	 * Get all the listed relations in master table.
	 * @return
	 * 		list of relation names
	 */
	List<String> findAllMaritalStatus();

	/**
	 * Get all the listed religions in master table.
	 * @return
	 * 		list of religion names
	 */
	List<String> findAllReligion();

	/**
	 * Get all the listed education qualifications in master table.
	 * @return
	 * 		list of qualification names
	 */
	List<String> findAllEducationalQualification();

	/**
	 * Get all the listed gender in master table.
	 * @return
	 * 		list of gender names
	 */
	List<String> findAllGender();

}