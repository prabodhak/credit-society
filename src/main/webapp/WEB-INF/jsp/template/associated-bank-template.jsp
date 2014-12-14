<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="box-body">
	<div class="form-group col-md-4">
		<label class="form-label" for="accountHolderNameId">Account Holder Name</label>
		<form:input type="text" name="accountHolderName" class="form-control width-3"
			id="accountHolderNameId" placeholder="Account Holder Name" path="accountHolderName" />
	</div>		
	<div class="form-group col-md-4">
		<label class="form-label" for="accountNumberId">Account Number</label>
		<form:input type="text" name="accountNumber" class="form-control width-3"
			id="accountNumberId" placeholder="Account Number" path="accountNumber" />
	</div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="bankNameId">Bank Name</label>
		<form:input type="text" name="bankName" class="form-control width-3"
			id="bankNameId" placeholder="Bank Name" path="bankName" />
	</div>	
	<div class="clearfix"></div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="branchCodeId">Branch Code</label>
		<form:input type="text" name="branchCode" class="form-control width-3"
			id="branchCodeId" placeholder="Branch Code" path="branchCode" />
	</div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="ifscCodeId">IFSC Code </label>
		<form:input type="text" name="ifscCode" class="form-control width-3"
			id="ifscCodeId" placeholder="IFSC Code" path="ifscCode" />
	</div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="micsId">MICR</label>
		<form:input type="text" name="micr" class="form-control width-3"
			id="micrId" placeholder="MICR" path="micr" />
	</div>	
	<div class="clearfix"></div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankAddr1Id">Address Line 1</label>
		<form:input type="text" name="associatedBankAddr1"
			class="form-control width-3" id="associatedBankAddr1Id"
			placeholder="Address Line 1"
			path="associatedBank.permanentAddress.addressLine1" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankAddr2Id">Address Line 2</label>
		<form:input type="text" name="associatedBankAddr2"
			class="form-control width-3" id="associatedBankAddr2Id"
			placeholder="Address Line 2"
			path="associatedBank.permanentAddress.addressLine2" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankLandmarkId">Landmark</label>
		<form:input type="text" name="associatedBankLandmark"
			class="form-control width-3" id="associatedBankLandmarkId"
			placeholder="Landmark" path="associatedBank.permanentAddress.landmark" />
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankCityId">City</label>
		<form:input type="text" name="associatedBankCity"
			class="form-control width-3" id="associatedBankCityId" placeholder="City"
			path="associatedBank.permanentAddress.city" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankDistrictId">District</label>
		<form:input type="text" name="associatedBankDistrict"
			class="form-control width-3" id="associatedBankDistrictId"
			placeholder="District" path="associatedBank.permanentAddress.district" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankStateId">State</label>
		<form:input type="text" name="associatedBankState"
			class="form-control width-3" id="associatedBankStateId" placeholder="State"
			path="associatedBank.permanentAddress.state" />
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankCountryId">Country</label>
		<form:input type="text" name="associatedBankCountry"
			class="form-control width-3" id="associatedBankCountryId"
			placeholder="Country" path="associatedBank.permanentAddress.country" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="associatedBankPinId">PIN</label>
		<form:input type="text" name="associatedBankPin"
			class="form-control width-3" id="associatedBankPinId" placeholder="PIN"
			path="associatedBank.permanentAddress.pincode" />
	</div>		
	<div class="clearfix"></div>		
</div>
<!-- /.box-body -->	