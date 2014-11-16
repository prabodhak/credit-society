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

	@Column(name="address_line1")
	@NotEmpty
	private String addressLine1;
	
	@Column(name="address_line2")
	@NotEmpty
	private String addressLine2;
	
	@Column(name="landmark")
	private String landmark;
	
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

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
}
