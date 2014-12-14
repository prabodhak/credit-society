<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- DATA TABLES -->
<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />

<!-- Right side column. Contains the navbar and content of the page -->
<div id="main-content">
	<aside class="right-side">
		<section class="content" style="padding-bottom:0px;">
			<div class="row" align="left">
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
		<!-- Main content -->
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box box-solid box-primary">
						<div class="box-header">
							<h3 class="box-title">Add Associated Bank Details</h3>
							<div class="box-tools pull-right">
								<button class="btn btn-primary btn-sm" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form:form role="form" modelAttribute="associatedBank" action="master/associated-bank/add" method="post">
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
										path="branchAddress.addressLine1" />
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="associatedBankAddr2Id">Address Line 2</label>
									<form:input type="text" name="associatedBankAddr2"
										class="form-control width-3" id="associatedBankAddr2Id"
										placeholder="Address Line 2"
										path="branchAddress.addressLine2" />
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="associatedBankLandmarkId">Landmark</label>
									<form:input type="text" name="associatedBankLandmark"
										class="form-control width-3" id="associatedBankLandmarkId"
										placeholder="Landmark" path="branchAddress.landmark" />
								</div>
								<div class="clearfix"></div>
								<div class="form-group col-md-4">
									<label class="form-label" for="associatedBankCityId">City</label>
									<form:input type="text" name="associatedBankCity"
										class="form-control width-3" id="associatedBankCityId" placeholder="City"
										path="branchAddress.city" />
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="associatedBankDistrictId">District</label>
									<form:input type="text" name="associatedBankDistrict"
										class="form-control width-3" id="associatedBankDistrictId"
										placeholder="District" path="branchAddress.district" />
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="associatedBankStateId">State</label>
									<form:input type="text" name="associatedBankState"
										class="form-control width-3" id="associatedBankStateId" placeholder="State"
										path="branchAddress.state" />
								</div>
								<div class="clearfix"></div>
								<div class="form-group col-md-4">
									<label class="form-label" for="associatedBankCountryId">Country</label>
									<form:input type="text" name="associatedBankCountry"
										class="form-control width-3" id="associatedBankCountryId"
										placeholder="Country" path="branchAddress.country" />
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="associatedBankPinId">PIN</label>
									<form:input type="text" name="associatedBankPin"
										class="form-control width-3" id="associatedBankPinId" placeholder="PIN"
										path="branchAddress.pincode" />
								</div>		
								<div class="form-group col-md-3 add-verification-docs">
									<button name="associatedButton" class="btn btn-success">Add</button>
								</div>								
								<div class="clearfix"></div>		
							</div>
							
						</form:form>
					</div>
					<!-- /.box -->
					
					<!-- /.box-body -->

					<!-- /.box -->
	
				</div>
				<!--/.col (left) -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
	</aside>
</div>
<!-- /.right-side -->
<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<script type="text/javascript">
    $(function() {
        $("#verificationDocListId").dataTable();
        $('#example2').dataTable({
            "bPaginate": true,
            "bLengthChange": false,
            "bFilter": false,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false
        });
    });
</script>