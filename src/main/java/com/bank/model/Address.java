package com.bank.model;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * This class represent an Address. It can be used for any kind of address.
 * 
 * @author Ajay
 *
 */
public class Address extends BaseEntity {

	@NotEmpty
	private String houseNumber;
	private String landmark;
	
	@NotEmpty
	private String street;
	private String policeStation;
	
	@NotEmpty
	private String city;
	private String district;
	
	@NotEmpty
	private String state;
	
	@NotEmpty
	private String country;
	
	@NotEmpty
	private String pincode;

	public Address() {
		// TODO Auto-generated constructor stub
	}

	public String getHouseNumber() {
		return houseNumber;
	}

	public String getLandmark() {
		return landmark;
	}

	public String getStreet() {
		return street;
	}

	public String getPoliceStation() {
		return policeStation;
	}

	public String getCity() {
		return city;
	}

	public String getDistrict() {
		return district;
	}

	public String getState() {
		return state;
	}

	public String getCountry() {
		return country;
	}

	public String getPincode() {
		return pincode;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public void setPoliceStation(String policeStation) {
		this.policeStation = policeStation;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

}
