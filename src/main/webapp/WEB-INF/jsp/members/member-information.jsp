<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<section class="content" style="padding-bottom:0px;">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header" style="padding:2px;">
						<a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> Add
						</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> Edit
						</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> View
						</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i>
							Delete
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Personal Details (1/2) -->
	<section class="content" style="padding-top:0px;">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Personal Details (1/2)</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form:form role="form" modelAttribute="member" name="personalDetail1" id="personalDetail1Id"
						method="POST" action="member/member-info/add">
						<div class="box-body">
							<div class="form-group col-md-4">
								<label class="form-label" for="customerType">Customer
									Type</label>
								<div class="radio margin-none">
									<label> <form:radiobutton name="customerType"
										id="customerTypePublicId" checked="checked" value="true" path="customerType" /> Public
									</label> <label style="margin-left: 15px;"> <form:radiobutton
										name="customerType" id="customerTypeStaffId" value="false" path="customerType" /> Staff
									</label>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="seniorCitizenId">Senior
									Citizen</label>
								<div class="checkbox margin-none">
									<label> <form:checkbox name="seniorCitizen"
										id="seniorCitizenId" path="seniorCitizen" /> Yes
									</label>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="minorId">Minor</label>
								<div class="checkbox margin-none">
									<label> <form:checkbox name="minor"
										id="minorId" path="minor" /> Yes
									</label>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="lastNameId">Last Name</label> <form:input
									type="text" name="lastName" class="form-control width-3"
									id="lastNameId" placeholder="Last Name" path="lastName" />
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="firstNameId">First Name</label> <form:input
									type="text" name="firstName" class="form-control width-3"
									id="firstNameId" placeholder="First Name" path="firstName" />
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="middleNameId">Middle Name</label>
								<form:input type="text" name="middleName"
									class="form-control width-3" id="middleNameId"
									placeholder="Middle Name" path="middleName" />
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="fatherHusbandNameId">Father/Husband
									Name</label> <form:input type="text" name="fatherHusbandName"
									class="form-control width-3" id="fatherHusbandNameId"
									placeholder="Father/Husband Name" path="fatherName" />
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="motherMaidenNameId">Mother
									Maiden Name</label> <form:input type="text" name="motherMaidenName"
									class="form-control width-3" id="motherMaidenNameId"
									placeholder="Mother Maiden Name" path="motherMaidenName" />
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="maritalStatusId">Marital
									Status</label> <form:select name="maritalStatus"
									class="form-control nationality-width" id="maritalStatusId" path="maritalStatus">
									<form:options items="${maritalStatusList }"/>
									<%-- <form:option value="">--Select Marital Status--</form:option>
									<form:option value="1">UnMarried</form:option>
									<form:option value="2">Married</form:option>
									<form:option value="3">Separated</form:option>
									<form:option value="4">Divorced</form:option>
									<form:option value="5">Widowed</form:option> --%>
								</form:select>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<div class="col-3-4">
									<label class="form-label" for="dobId">Date of Birth</label> <form:input
										type="text" name="dob" class="form-control" id="dobId"
										placeholder="Date of Birth" path="creationDate"/>
								</div>
								<div class="col-1-4">
									<label class="form-label" for="ageId">Age</label> <input
										type="text" name="age" class="form-control" id="ageId"
										placeholder="Age">
								</div>

							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="genderId">Gender</label> <form:select
									name="gender" class="form-control nationality-width"
									id="genderId" path="gender">
									<form:option value="">--Select Gender--</form:option>
									<form:option value="1">Male</form:option>
									<form:option value="2">Female</form:option>
									<form:option value="3">Transe</form:option>
								</form:select>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nationalityId">Nationality</label>
								<form:select name="nationality"
									class="form-control nationality-width" id="nationalityId" path="nationality">
									<form:option value="">Indian</form:option>
								</form:select>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="uidId">UID Number</label> <form:input
									type="text" name="uid" class="form-control width-3" id="uidId"
									placeholder="UID Number" path="uid"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="uidGuardianId">UID Number
									of Guardian(If Minor)</label> <input type="text" name="uidGuardian"
									class="form-control width-3" id="uidGuardianId"
									placeholder="UID Number of Guardian">
							</div>
							<div class="form-group col-md-4">
								<div class="col-3-4" style="width: 45%;">
									<label class="form-label" for="panCardNoId">Pan Card
										No. &nbsp; &nbsp;Or</label> <input type="text" name="panCardNo"
										class="form-control" id="panCardNoId"
										placeholder="Pan Card No.">
								</div>
								<div class="col-1-4" style="margin-left: 5px;">
									<label class="form-label" for="form60-61Id">Form-60/61</label>
									<div name="form60-61" class="checkbox margin-none"
										style="margin-top: 5px;">
										<label> <input type="checkbox" name="form60-61"
											id="form60-61Id"> Yes
										</label>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="exampleInputEmail1Id">Email
									address</label> <form:input type="email" name="exampleInputEmail1"
									class="form-control width-3" id="exampleInputEmail1Id"
									placeholder="Enter email" path="emailId"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="mob1Id">Mobile No</label> <form:input
									type="text" name="mob1" class="form-control width-3"
									id="mob1Id" placeholder="Mobile No" path="mobile"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="mob2Id">Alternate Mobile
									No</label> <input type="text" name="mob2" class="form-control width-3"
									id="mob2Id" placeholder="Alternate Mobile No">
							</div>
							<div class="clearfix"></div>
							<hr>
							<div class="form-group col-md-4">
								<label class="form-label" for="localAddress">Local
									Address</label> <form:input type="text" name="locAddress1"
									class="form-control width-3 margin-bottom-5" id="locAddress1Id"
									placeholder="Address Line 1" path="localAddress.addressLine1"/> <form:input type="text"
									name="locAddress2" class="form-control width-3 margin-bottom-5"
									id="locAddress2Id" placeholder="Address Line 2" path="localAddress.addressLine2"/> <form:input
									type="text" name="locLandmark"
									class="form-control width-3 margin-bottom-5" id="locLandmarkId"
									placeholder="Landmark" path="localAddress.landmark"/> <form:input type="text"
									name="locCity" class="form-control width-3 margin-bottom-5"
									id="locCityId" placeholder="City" path="localAddress.city"/> <form:input type="text"
									name="locDist" class="form-control width-3 margin-bottom-5"
									id="locDistId" placeholder="Dist" path="localAddress.district"/> <form:input type="text"
									name="locState" class="form-control width-3 margin-bottom-5"
									id="locStateId" placeholder="State" path="localAddress.state"/> <form:input type="text"
									name="locCountry" class="form-control width-3 margin-bottom-5"
									id="locCountryId" placeholder="Country" path="localAddress.country"/> <form:input
									type="text" name="locPin"
									class="form-control width-3 margin-bottom-5" id="locPinId"
									placeholder="Pin" path="localAddress.pincode"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label permanent-address"
									for="permanentAddress">Permanent Address</label>
								<div class="checkbox same-as-local">
									<label> <input type="checkbox"> Same as Local
									</label>
								</div>
								<form:input type="text" name="perAddress1"
									class="form-control width-3 margin-bottom-5" id="perAddress1Id"
									placeholder="Address Line 1" path="permanentAddress.addressLine1"/> <form:input type="text"
									name="perAddress2" class="form-control width-3 margin-bottom-5"
									id="perAddress2Id" placeholder="Address Line 2" path="permanentAddress.addressLine2"/> <form:input
									type="text" name="perLandmark"
									class="form-control width-3 margin-bottom-5" id="perLandmarkId"
									placeholder="Landmark" path="permanentAddress.landmark"/> <form:input type="text"
									name="perCity" class="form-control width-3 margin-bottom-5"
									id="perCityId" placeholder="City" path="permanentAddress.city"/> <form:input type="text"
									name="perDist" class="form-control width-3 margin-bottom-5"
									id="perDistId" placeholder="Dist" path="permanentAddress.district"/> <form:input type="text"
									name="perState" class="form-control width-3 margin-bottom-5"
									id="perStateId" placeholder="State" path="permanentAddress.state"/> <form:input type="text"
									name="perCountry" class="form-control width-3 margin-bottom-5"
									id="perCountryId" placeholder="Country" path="permanentAddress.country"/> <form:input
									type="text" name="perPin"
									class="form-control width-3 margin-bottom-5" id="perPinId"
									placeholder="Pin" path="permanentAddress.pincode"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="localAddress">Office
									Address</label> <form:input type="text" name="offAddress1"
									class="form-control width-3 margin-bottom-5" id="offAddress1Id"
									placeholder="Address Line 1" path="officeAddress.addressLine1"/> <form:input type="text"
									name="offAddress2" class="form-control width-3 margin-bottom-5"
									id="offAddress2Id" placeholder="Address Line 2" path="officeAddress.addressLine2"/> <form:input
									type="text" name="offLandmark"
									class="form-control width-3 margin-bottom-5" id="offLandmarkId"
									placeholder="Landmark" path="officeAddress.landmark"/> <form:input type="text"
									name="offCity" class="form-control width-3 margin-bottom-5"
									id="offCityId" placeholder="City" path="officeAddress.city"/> <form:input type="text"
									name="offDist" class="form-control width-3 margin-bottom-5"
									id="offDistId" placeholder="Dist" path="officeAddress.district"/> <form:input type="text"
									name="offState" class="form-control width-3 margin-bottom-5"
									id="offStateId" placeholder="State" path="officeAddress.state"/> <form:input type="text"
									name="offCountry" class="form-control width-3 margin-bottom-5"
									id="offCountryId" placeholder="Country" path="officeAddress.country"/> <form:input
									type="text" name="offPin"
									class="form-control width-3 margin-bottom-5" id="offPinId"
									placeholder="Pin" path="officeAddress.pincode"/>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->

						<div class="box-footer next-btn">
							<button type="submit" name="personalNext1"
								class="btn btn-primary" id="personalNext1Id">Next</button>
						</div>
						<div class="clearfix"></div>
					</form:form>
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
	<!-- Personal Details (2/2) -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Personal Details (2/2)</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form:form role="form" modelAttribute="member" action="" method="post">
						<div class="box-body">
							<div class="form-group col-md-4">
								<label class="form-label" for="incomeId">Income
									&nbsp;(Annually)</label> <form:input type="text" name="income"
									class="form-control width-3" id="incomeId"
									placeholder="Income (Annually)" path="income"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="religionId">Religion</label> <form:select
									name="religion" class="form-control nationality-width"
									id="religionId" path="religion">
									<form:options items="${religionList}"/>
								</form:select>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="categoryId">Category</label> <form:select
									name="category" class="form-control nationality-width"
									id="categoryId" path="category">
									<form:options items="${casteCategoryList}"/>
								</form:select>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="educationQualificationId">Education
									Qualification</label> <form:select name="educationQualification"
									class="form-control nationality-width"
									id="educationQualificationId" path="educationalQualification">
									<form:options items="${educationalQualificationList}"/>
								</form:select>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="occupationTypeId">Occupation
									Type</label> <form:select name="occupationType"
									class="form-control nationality-width" id="occupationTypeId" path="occupation">
									<form:options items="${occupationList}"/>
								</form:select>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-8">
								<label class="form-label" for="">Document Submitted</label>
								<div class="clearfix"></div>
								<div class="col-md-6 padding-none">
									<input type="checkbox" name="pacCardDocChk"
										id="pacCardDocChkId"> PAN Card
								</div>
								<div class="col-md-6">
									<input type="file" name="panCardFile" id="panCardFileId">
								</div>
								<div class="col-md-6 padding-none">
									<input type="checkbox" name="voterIdDocChk"
										id="voterIdDocChkId"> Voter Id Card
								</div>
								<div class="col-md-6">
									<input type="file" name="voterIDFile" id="voterIDFileId">
								</div>
								<div class="col-md-6 padding-none">
									<input type="checkbox" name="aadharCardDocChk"
										id="aadharCardDocChkId"> Aadhaar Card
								</div>
								<div class="col-md-6">
									<input type="file" name="aadhaarCardFile"
										id="aadhaarCardFileId">
								</div>
								<div class="col-md-6 padding-none">
									<input type="checkbox" name="dlDocChk" id="dlDocChkId">
									Driving Licence
								</div>
								<div class="col-md-6">
									<input type="file" name="drivingLicenceFile"
										id="drivingLicenceFileId">
								</div>
								<div class="col-md-6 padding-none">
									<input type="checkbox" name="studIdDocChk" id="studIdDocChkId">
									Student Identity Card
								</div>
								<div class="col-md-6">
									<input type="file" name="studentIdentityCardFile"
										id="studentIdentityCardFileId">
								</div>
								<div class="col-md-6 padding-none">
									<input type="checkbox" name="offIdDocChk" id="offIdDocChkId">
									Govt Office Issued Identity Card
								</div>
								<div class="col-md-6">
									<input type="file" name="offIDCardFile" id="offIDCardFileId">
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->
						<div class="clearfix"></div>
						<div class="box-footer next-btn">
							<button type="button" name="personalNext2"
								class="btn btn-primary" id="personalNext2Id">Next</button>
						</div>
						<div class="clearfix"></div>
					</form:form>
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>

	<!-- Introducer Details -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Introducer Details</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- form start -->
					<form:form role="form" modelAttribute="member" action="" method="post">
						<div class="box-body">
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerNameId">Name</label> <form:input
									type="text" name="introducerName" class="form-control width-3"
									id="introducerNameId" placeholder="Name" path="introducer"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerAccountNoId">Account
									No</label> <form:input type="text" name="introducerAccountNo"
									class="form-control width-3" id="introducerAccountNoId"
									placeholder="Account no" path="introducer.accountNumber"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerContactNoId">Contact
									No</label> <form:input type="text" name="introducerContactNo"
									class="form-control width-3" id="introducerContactNoId"
									placeholder="Contact No" path="introducer.mobile"/>
							</div>
							<div class="clearfix"></div>
							<!-- Upload Introducer Photo & Signature -->
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerPhototId">Upload
									Photo</label> <input type="file" name="introducerPhotot"
									id="introducerPhototId"> </br>
								</br> <label class="form-label" for="introducerSignatureImageId">Upload
									Signature</label> <input type="file" name="introducerSignatureImage"
									id="introducerSignatureImageId">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerPhototPreviewId">Photo
									Preview</label>
								<div>
									<img name="introducerPhototPreview"
										id="introducerPhototPreviewId"
										style="width: 50%; height: 120px;"
										src="http://www.html.am/images/image-codes/milford_sound_t.jpg"
										alt="Photo of Introducer" />
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="introducerSignaturePreviewId">Signature
									Preview</label>
								<div>
									<img name="introducerSignaturePreview" class="width-3"
										id="introducerSignaturePreviewId" style="height: 60px;"
										src="http://www.html.am/images/image-codes/milford_sound_t.jpg"
										alt="Signature of Introducer" />
								</div>
							</div>
							<!-- Photo upload ends -->
							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer next-btn">
							<button type="submit" class="btn btn-primary">Next</button>
						</div>
					</form:form>
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
	<!-- Introducer Details Ends -->
	<!-- Gaurdian Form -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Gaurdian Details (If A/C holder is
							minor)</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- form start -->
					<form:form role="form" modelAttribute="member" action="" method="post">
						<div class="box-body">
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianNameId">Name</label> <form:input
									type="text" name="guardianName" class="form-control width-3"
									id="guardianNameId" placeholder="Name" path="guardian.name"/>
							</div>
							<div class="form-group col-md-4">
								<div class="col-3-4">
									<label class="form-label" for="guardianDobId">Date of
										Birth</label> <form:input type="text" name="guardianDob"
										class="form-control" id="guardianDobId"
										placeholder="Date of Birth" path="guardian.birthDate"/>
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
									placeholder="Email Id" path="guardian.emailId"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianContactNoId">Contact
									No.</label> <form:input name="guardianContactNo" type="text"
									class="form-control width-3" id="guardianContactNoId"
									placeholder="Contact No." path="guardian.mobile"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianRelationId">Relation</label>
								<form:input type="text" name="guardianRelation"
									class="form-control width-3" id="guardianRelationId"
									placeholder="Relation" path="guardian.relationship"/>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianAddr1Id">Address
									Line 1</label> <form:input type="text" name="guardianAddr1"
									class="form-control width-3" id="guardianAddr1Id"
									placeholder="Address Line 1" path="guardian.permanentAddress.addressLine1"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianAddr2Id">Address
									Line 2</label> <form:input type="text" name="guardianAddr2"
									class="form-control width-3" id="guardianAddr2Id"
									placeholder="Address Line 2" path="guardian.permanentAddress.addressLine2"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianLandmarkId">Landmark</label>
								<form:input type="text" name="guardianLandmark"
									class="form-control width-3" id="guardianLandmarkId"
									placeholder="Landmark" path="guardian.permanentAddress.landmark"/>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianCityId">City</label> <form:input
									type="text" name="guardianCity" class="form-control width-3"
									id="guardianCityId" placeholder="City" path="guardian.permanentAddress.city"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianDistrictId">District</label>
								<form:input type="text" name="guardianDistrict"
									class="form-control width-3" id="guardianDistrictId"
									placeholder="District" path="guardian.permanentAddress.district"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianStateId">State</label> <form:input
									type="text" name="guardianState" class="form-control width-3"
									id="guardianStateId" placeholder="State" path="guardian.permanentAddress.state"/>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianCountryId">Country</label>
								<form:input type="text" name="guardianCountry"
									class="form-control width-3" id="guardianCountryId"
									placeholder="Country" path="guardian.permanentAddress.country"/>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="guardianPinId">PIN</label> <form:input
									type="text" name="guardianPin" class="form-control width-3"
									id="guardianPinId" placeholder="PIN" path="guardian.permanentAddress.pincode"/>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer next-btn">
							<button type="submit" class="btn btn-primary">Next</button>
						</div>
					</form:form>
				</div>
				<!-- Gaurdian /.box -->
			</div>
		</div>
	</section>
</aside>
<!-- /.right-side -->
<!-- /.right-side -->
<script type="text/javascript">
	$(document).ready(function() {
		$("#personalDetail1Id").validate({
			errorElement : 'span',
			rules : {
				firstName : {
					required : true,
					minlength : 2
				},
				fatherHusbandName : {
					required : true
				},
				motherMaidenName : {
					required : true
				},
				maritalStatus : {
					required : true
				},
				dob : {
					required : true
				},
				gender : {
					required : true
				},
				nationality : {
					required : true
				},
				email : {
					email : true
				},
				mob1 : {
					required : true
				},
				locAddress1 : {
					required : true
				},
				locCity : {
					required : true
				},
				locDist : {
					required : true
				},
				locState : {
					required : true
				},
				locCountry : {
					required : true
				},
				locPin : {
					required : true,
					digits : true,
					minlength : 6,
					maxlength : 6
				},
				perAddress1 : {
					required : true
				},
				perCity : {
					required : true
				},
				perDist : {
					required : true
				},
				perState : {
					required : true
				},
				perCountry : {
					required : true
				},
				perPin : {
					required : true,
					digits : true,
					minlength : 6,
					maxlength : 6
				}
			},
			messages : {
				firstName : "Please enter your Last Name",
			},

			submitHandler : function(form) {
				form.submit();
			}
		});
	});
</script>