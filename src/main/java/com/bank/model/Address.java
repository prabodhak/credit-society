package com.bank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * This class represent an Address. It can be used for any kind of address.
 * 
 * @author Ajay
 *
 */

@Entity
@Table(name="address")
public class Address extends BaseEntity {

	@Column(name="house_number")
	@NotEmpty
	private String houseNumber;
	
	@Column(name="landmark")
	private String landmark;
	
	@Column(name="street")
	@NotEmpty
	private String street;
	
	@Column(name="city")
	@NotEmpty
	private String city;
	
	@Column(name="district")
	private String district;
	
	@Column(name="state")
	@NotEmpty
	private String state;
	
	@Column(name="country")
	@NotEmpty
	private String country;
	
	@Column(name="pincode")
	@NotEmpty
	private String pincode;

	public Address() {
		
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
