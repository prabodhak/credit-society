<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page pageEncoding="utf-8" %>

<div class="box-body">
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianNameId">Name</label>
		<form:input type="text" name="guardianName"
			class="form-control width-3" id="guardianNameId" placeholder="Name"
			path="guardian.name" />
	</div>
	<div class="form-group col-md-4">
		<div class="col-3-4">
			<label class="form-label" for="guardianDobId">Date of Birth</label>
			<form:input type="text" name="guardianDob" class="form-control"
				id="guardianDobId" placeholder="Date of Birth"
				path="guardian.birthDate" />
		</div>
		<div class="col-1-4">
			<label class="form-label" for="guardianAgeId">Age</label> <input
				type="text" name="guardianAge" class="form-control"
				id="guardianAgeId" placeholder="Age">
		</div>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianGenderId">Gender</label>
		<form:select name="guardianGender"
			class="form-control nationality-width" path="guardian.gender">
			<form:option value="">--Select Gender--</form:option>
			<form:option value="1">Male</form:option>
			<form:option value="1">Female</form:option>
			<form:option value="2">Transe</form:option>
		</form:select>
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianEmailId">Email Id</label>
		<form:input name="guardianEmail" type="text"
			class="form-control width-3" id="guardianEmailId"
			placeholder="Email Id" path="guardian.emailId" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianContactNoId">Contact
			No.</label>
		<form:input name="guardianContactNo" type="text"
			class="form-control width-3" id="guardianContactNoId"
			placeholder="Contact No." path="guardian.mobile" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianRelationId">Relation</label>
		<form:input type="text" name="guardianRelation"
			class="form-control width-3" id="guardianRelationId"
			placeholder="Relation" path="guardian.relationship" />
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianAddr1Id">Address Line 1</label>
		<form:input type="text" name="guardianAddr1"
			class="form-control width-3" id="guardianAddr1Id"
			placeholder="Address Line 1"
			path="guardian.permanentAddress.addressLine1" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianAddr2Id">Address Line 2</label>
		<form:input type="text" name="guardianAddr2"
			class="form-control width-3" id="guardianAddr2Id"
			placeholder="Address Line 2"
			path="guardian.permanentAddress.addressLine2" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianLandmarkId">Landmark</label>
		<form:input type="text" name="guardianLandmark"
			class="form-control width-3" id="guardianLandmarkId"
			placeholder="Landmark" path="guardian.permanentAddress.landmark" />
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianCityId">City</label>
		<form:input type="text" name="guardianCity"
			class="form-control width-3" id="guardianCityId" placeholder="City"
			path="guardian.permanentAddress.city" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianDistrictId">District</label>
		<form:input type="text" name="guardianDistrict"
			class="form-control width-3" id="guardianDistrictId"
			placeholder="District" path="guardian.permanentAddress.district" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianStateId">State</label>
		<form:input type="text" name="guardianState"
			class="form-control width-3" id="guardianStateId" placeholder="State"
			path="guardian.permanentAddress.state" />
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianCountryId">Country</label>
		<form:input type="text" name="guardianCountry"
			class="form-control width-3" id="guardianCountryId"
			placeholder="Country" path="guardian.permanentAddress.country" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="guardianPinId">PIN</label>
		<form:input type="text" name="guardianPin"
			class="form-control width-3" id="guardianPinId" placeholder="PIN"
			path="guardian.permanentAddress.pincode" />
	</div>
	<div class="clearfix"></div>
</div>
<!-- /.box-body -->