<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="box-body">
	<div class="form-group col-md-4">
		<label class="form-label" for="customerType"><spring:message code="master$members$memberInformation$memberType.label"/></label>
		<div class="radio margin-none">
			<label> <form:radiobutton name="customerType"
					id="customerTypePublicId" checked="checked" value="true"
					path="customerType" /> Public
			</label> <label style="margin-left: 15px;"> <form:radiobutton
					name="customerType" id="customerTypeStaffId" value="false"
					path="customerType" /> Staff
			</label>
		</div>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="seniorCitizenId"><spring:message code="master$members$memberInformation$seniorCitizen.label"/></label>
		<div class="checkbox margin-none">
			<label> <form:checkbox name="seniorCitizen"
					id="seniorCitizenId" path="seniorCitizen" /><spring:message code="yes"/></label>
		</div>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="minorId"><spring:message code="master$members$memberInformation$minor.label"/></label>
		<div class="checkbox margin-none">
			<label> <form:checkbox name="minor" id="minorId" path="minor" />
				<spring:message code="yes"/>
			</label>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="lastNameId"><spring:message code="lastName.label"/></label>
		<form:input type="text" name="lastName" class="form-control width-3"
			id="lastNameId" placeholder="Last Name" path="lastName" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="firstNameId"><spring:message code="firstName.label"/></label>
		<form:input type="text" class="form-control width-3"
			id="firstNameId" placeholder="First Name" path="firstName" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="middleNameId"><spring:message code="middleName.label"/></label>
		<form:input type="text" name="middleName" class="form-control width-3"
			id="middleNameId" placeholder="Middle Name" path="middleName" />
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="fatherHusbandNameId"><spring:message code="fatherHusbandName.label"/></label>
		<form:input type="text" name="fatherHusbandName"
			class="form-control width-3" id="fatherHusbandNameId"
			placeholder="Father/Husband Name" path="fatherName" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="motherMaidenNameId"><spring:message code="motherMaidenName.label"/></label>
		<form:input type="text" name="motherMaidenName"
			class="form-control width-3" id="motherMaidenNameId"
			placeholder="Mother Maiden Name" path="motherMaidenName" />
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<div class="col-3-4">
		<!-- TODO - change name from creationDate to dob -->
			<label class="form-label" for="creationDate"><spring:message code="birthDate.label"/></label>
			<form:input type="text" name="creationDate" class="form-control" id="dobId"
				placeholder="Date of Birth" data-date-format="dd MM yyyy" readonly="true" path="creationDate" />
		</div>
		<div class="col-1-4">
			<label class="form-label" for="ageId"><spring:message code="age.label"/></label> <input type="text"
				name="age" class="form-control" id="ageId" readonly placeholder="Age">
		</div>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="genderId"><spring:message code="gender.label"/></label>
		<form:select name="gender" class="form-control nationality-width"
			id="genderId" path="gender">
			<form:option value="">--Select Gender--</form:option>
			<form:options items="${genderList }" />
		</form:select>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="maritalStatusId"><spring:message code="maritalStatus.label"/></label>
		<form:select name="maritalStatus"
			class="form-control nationality-width" id="maritalStatusId"
			path="maritalStatus">
			<form:option value="">--Select Marital Status--</form:option>
			<form:options items="${maritalStatusList }" />
		</form:select>
	</div>
	<div class="clearfix"></div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="nationalityId"><spring:message code="nationality.label"/></label>
		<form:select name="nationality" class="form-control nationality-width"
			id="nationalityId" path="nationality">
			<form:option value="">Indian</form:option>
		</form:select>
	</div>
	
	<div class="form-group col-md-4">
		<label class="form-label" for="religionId"><spring:message code="religion.label"/></label>
		<form:select name="religion" class="form-control nationality-width"
			id="religionId" path="religion">
			<form:option value="">--Select Religion--</form:option>
			<form:options items="${religionList}" />
		</form:select>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="categoryId"><spring:message code="category.label"/></label>
		<form:select name="category" class="form-control nationality-width"
			id="categoryId" path="category">
			<form:option value="">--Select Category--</form:option>
			<form:options items="${casteCategoryList}" />
		</form:select>
	</div>
	<div class="clearfix"></div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="uidId"><spring:message code="master$members$memberInformation$uidNo.label"/></label>
		<form:input type="text" name="uid" class="form-control width-3"
			id="uidId" placeholder="UID Number" path="uid" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="uidGuardianId">UID Number of
			Guardian(If Minor)</label> <input type="text" name="uidGuardian"
			class="form-control width-3" id="uidGuardianId"
			placeholder="UID Number of Guardian">
	</div>
	<div class="form-group col-md-4">
		<div class="col-3-4" style="width: 45%;">
			<label class="form-label" for="panCardNoId"><spring:message code="master$members$memberInformation$panNo.label"/></label> <input type="text" name="panCardNo"
				class="form-control" id="panCardNoId" placeholder="Pan Card No.">
		</div>
		<div class="col-1-4" style="margin-left: 5px;">
			<label class="form-label" for="form60-61Id"><spring:message code="master$members$memberInformation$form60.label"/></label>
			<div class="checkbox margin-none" style="margin-top: 5px;">
				<label> <input type="checkbox" name="form60-61"
					id="form60-61Id"> <spring:message code="yes"/>
				</label>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="emailId"><spring:message code="email.label"/></label>
		<form:input type="email" name="emailId"
			class="form-control width-3" id="emailIdId"
			placeholder="Enter email" path="emailId" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="mob1Id"><spring:message code="mobile.label"/></label>
		<form:input type="text" name="mob1" class="form-control width-3"
			id="mob1Id" placeholder="Mobile No" path="mobile" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="mob2Id"><spring:message code="alternateMobile.label"/></label> <input
			type="text" name="mob2" class="form-control width-3" id="mob2Id"
			placeholder="Alternate Mobile No">
	</div>
	<div class="clearfix"></div>
	<hr>
	<div class="form-group col-md-4">
		<label class="form-label" for="localAddress"><spring:message code="localAddress.label"/></label>
		<form:input type="text" name="locAddress1"
			class="form-control width-3 margin-bottom-5" id="locAddress1Id"
			placeholder="Address Line 1" path="localAddress.addressLine1" />
		<form:input type="text" name="locAddress2"
			class="form-control width-3 margin-bottom-5" id="locAddress2Id"
			placeholder="Address Line 2" path="localAddress.addressLine2" />
		<form:input type="text" name="locLandmark"
			class="form-control width-3 margin-bottom-5" id="locLandmarkId"
			placeholder="Landmark" path="localAddress.landmark" />
		<form:input type="text" name="locCity"
			class="form-control width-3 margin-bottom-5" id="locCityId"
			placeholder="City" path="localAddress.city" />
		<form:input type="text" name="locDist"
			class="form-control width-3 margin-bottom-5" id="locDistId"
			placeholder="Dist" path="localAddress.district" />
		<form:input type="text" name="locState"
			class="form-control width-3 margin-bottom-5" id="locStateId"
			placeholder="State" path="localAddress.state" />
		<form:input type="text" name="locCountry"
			class="form-control width-3 margin-bottom-5" id="locCountryId"
			placeholder="Country" path="localAddress.country" />
		<form:input type="text" name="locPin"
			class="form-control width-3 margin-bottom-5" id="locPinId"
			placeholder="Pin" path="localAddress.pincode" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label permanent-address" for="permanentAddress"><spring:message code="permanentAddress.label"/></label>
		<div class="checkbox same-as-local">
			<label> <input type="checkbox" name="copyAddress"> <spring:message code="master$members$memberInformation$sameAsLocal.label"/>
			</label>
		</div>
		<form:input type="text" name="perAddress1"
			class="form-control width-3 margin-bottom-5" id="perAddress1Id"
			placeholder="Address Line 1" path="permanentAddress.addressLine1" />
		<form:input type="text" name="perAddress2"
			class="form-control width-3 margin-bottom-5" id="perAddress2Id"
			placeholder="Address Line 2" path="permanentAddress.addressLine2" />
		<form:input type="text" name="perLandmark"
			class="form-control width-3 margin-bottom-5" id="perLandmarkId"
			placeholder="Landmark" path="permanentAddress.landmark" />
		<form:input type="text" name="perCity"
			class="form-control width-3 margin-bottom-5" id="perCityId"
			placeholder="City" path="permanentAddress.city" />
		<form:input type="text" name="perDist"
			class="form-control width-3 margin-bottom-5" id="perDistId"
			placeholder="Dist" path="permanentAddress.district" />
		<form:input type="text" name="perState"
			class="form-control width-3 margin-bottom-5" id="perStateId"
			placeholder="State" path="permanentAddress.state" />
		<form:input type="text" name="perCountry"
			class="form-control width-3 margin-bottom-5" id="perCountryId"
			placeholder="Country" path="permanentAddress.country" />
		<form:input type="text" name="perPin"
			class="form-control width-3 margin-bottom-5" id="perPinId"
			placeholder="Pin" path="permanentAddress.pincode" />
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="localAddress"><spring:message code="officeAddress.label"/></label>
		<form:input type="text" name="offAddress1"
			class="form-control width-3 margin-bottom-5" id="offAddress1Id"
			placeholder="Address Line 1" path="officeAddress.addressLine1" />
		<form:input type="text" name="offAddress2"
			class="form-control width-3 margin-bottom-5" id="offAddress2Id"
			placeholder="Address Line 2" path="officeAddress.addressLine2" />
		<form:input type="text" name="offLandmark"
			class="form-control width-3 margin-bottom-5" id="offLandmarkId"
			placeholder="Landmark" path="officeAddress.landmark" />
		<form:input type="text" name="offCity"
			class="form-control width-3 margin-bottom-5" id="offCityId"
			placeholder="City" path="officeAddress.city" />
		<form:input type="text" name="offDist"
			class="form-control width-3 margin-bottom-5" id="offDistId"
			placeholder="Dist" path="officeAddress.district" />
		<form:input type="text" name="offState"
			class="form-control width-3 margin-bottom-5" id="offStateId"
			placeholder="State" path="officeAddress.state" />
		<form:input type="text" name="offCountry"
			class="form-control width-3 margin-bottom-5" id="offCountryId"
			placeholder="Country" path="officeAddress.country" />
		<form:input type="text" name="offPin"
			class="form-control width-3 margin-bottom-5" id="offPinId"
			placeholder="Pin" path="officeAddress.pincode" />
	</div>
	<div class="clearfix"></div>

	<div class="form-group col-md-4">
		<label class="form-label" for="educationQualificationId"><spring:message code="master$members$memberInformation$educationQualification.label"/></label>
		<form:select name="educationQualification"
			class="form-control nationality-width" id="educationQualificationId"
			path="educationalQualification">
			<form:option value="">--Select Qualification--</form:option>
			<form:options items="${educationalQualificationList}" />
		</form:select>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="occupationTypeId"><spring:message code="master$members$memberInformation$occupation.label"/></label>
		<form:select name="occupationType"
			class="form-control nationality-width" id="occupationTypeId"
			path="occupation">
			<form:option value="">--Select Occupation--</form:option>
			<form:options items="${occupationList}" />
		</form:select>
	</div>
	<div class="form-group col-md-4">
		<label class="form-label" for="incomeId"><spring:message code="master$members$memberInformation$.incomelabel"/></label>
		<form:input type="text" name="income" class="form-control width-3"
			id="incomeId" placeholder="Income (Annually)" path="income" />
	</div>	
	<div class="clearfix"></div>
	<div class="col-md-8">
		<label class="form-label" for=""><spring:message code="master$members$memberInformation$documentsSubmitted.label"/></label>
		<div class="clearfix"></div>
		<div class="col-md-6 padding-none">
			<input type="checkbox" name="pacCardDocChk" id="pacCardDocChkId">
			<spring:message code="panCard.label"/>
		</div>
		<div class="col-md-6">
			<input type="file" name="panCardFile" id="panCardFileId">
		</div>
		<div class="col-md-6 padding-none">
			<input type="checkbox" name="voterIdDocChk" id="voterIdDocChkId">
			<spring:message code="voterIdCard.label"/>
		</div>
		<div class="col-md-6">
			<input type="file" name="voterIDFile" id="voterIDFileId">
		</div>
		<div class="col-md-6 padding-none">
			<input type="checkbox" name="aadharCardDocChk"
				id="aadharCardDocChkId"> <spring:message code="aadhaarCard.label"/>
		</div>
		<div class="col-md-6">
			<input type="file" name="aadhaarCardFile" id="aadhaarCardFileId">
		</div>
		<div class="col-md-6 padding-none">
			<input type="checkbox" name="dlDocChk" id="dlDocChkId">
			<spring:message code="drivingLicence.label"/>
		</div>
		<div class="col-md-6">
			<input type="file" name="drivingLicenceFile"
				id="drivingLicenceFileId">
		</div>
		<div class="col-md-6 padding-none">
			<input type="checkbox" name="studIdDocChk" id="studIdDocChkId">
			<spring:message code="studentIdCard.label"/>
		</div>
		<div class="col-md-6">
			<input type="file" name="studentIdentityCardFile"
				id="studentIdentityCardFileId">
		</div>
		<div class="col-md-6 padding-none">
			<input type="checkbox" name="offIdDocChk" id="offIdDocChkId">
			<spring:message code="govtIssuedCard.label"/>
		</div>
		<div class="col-md-6">
			<input type="file" name="offIDCardFile" id="offIDCardFileId">
		</div>
	</div>
	<div class="clearfix"></div>
</div>
<!-- /.box-body -->

