package com.bank.model;

public class Address extends BaseEntity {

	private String houseNumber;
	private String landmark;
	private String street;
	private String policeStation;
	private String city;
	private String district;
	private String state;
	private String country;
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
