<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<aside class="right-side">
	<h4>CRUD Operation Buttons</h4>
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
	<h4>Add Form</h4>
	<!-- Main content -->
	<section class="content" style="padding-top:0px;">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Account Type Creation</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form role="form" action="account-type-creation.html" method="get">
						<div class="box-body">
							<div class="form-group col-md-4">
								<label class="form-label" for="accountType">Account Type</label>
								<select class="form-control width-3" id="accountType">
									<option>Select Account Type</option>
									<option>Loan</option>
									<option>Deposite</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="accountName">Account Name</label>
								<input type="text" class="form-control width-3" id="accountName"
									placeholder="Account Name">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="minimumBalance">Minimum
									Balance</label> <input type="text" class="form-control width-3"
									id="minimumBalance" placeholder="Minimum Balance">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="interestRate">Interest
									Rate</label> <input type="text" class="form-control width-3"
									id="interestRate" placeholder="Interest Rate">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="interestCalculationMode">Interest
									Calculation Mode</label> <select class="form-control width-3"
									id="interestCalculationMode">
									<option>Select Interest Calculation Mode</option>
									<option>Daily</option>
									<option>Weekly</option>
									<option>Mothly</option>
									<option>Quartly</option>
									<option>Half Yearly</option>
									<option>Yearly</option>
								</select>
							</div>
							<div class="clearfix"></div>
							<hr>
							<div class="form-group col-md-4">
								<label class="form-label" for="">Required Items</label>
								<div class="checkbox">
									<label> <input type="checkbox" id="guaranterRequired">
										Guaranter Required
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="panCardRequired">
										PAN Card Required
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="idetityRequired">
										Identity Proof Required
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="addressRequired">
										Address Proof Required
									</label>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="">Identity Proof
									Documents</label>
								<div class="checkbox">
									<label> <input type="checkbox"> Voter Id Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Driving
										Liscence
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> PAN Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Adhar Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Student
										Isentity Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Govt Office
										Issued Identity Card
									</label>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="">Address Proof Documents</label>
								<div class="checkbox">
									<label> <input type="checkbox"> Voter Id Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Driving
										Liscence
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> PAN Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Adhar Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Student
										Isentity Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Govt Office
										Issued Identity Card
									</label>
								</div>
							</div>

							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->
						<div class="clearfix"></div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Create</button>
						</div>
					</form>
				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
	<h4>Edit Form</h4>
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Account Type Creation</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form role="form" action="account-type-creation.html" method="get">
						<div class="box-body">
							<div class="form-group col-md-4">
								<label class="form-label" for="accountType">Account Type</label>
								<select class="form-control width-3" id="accountType">
									<option>Select Account Type</option>
									<option>Loan</option>
									<option>Deposite</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="accountName">Account Name</label>
								<input type="text" class="form-control width-3" id="accountName"
									placeholder="Account Name">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="minimumBalance">Minimum
									Balance</label> <input type="text" class="form-control width-3"
									id="minimumBalance" placeholder="Minimum Balance">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="interestRate">Interest
									Rate</label> <input type="text" class="form-control width-3"
									id="interestRate" placeholder="Interest Rate">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="interestCalculationMode">Interest
									Calculation Mode</label> <select class="form-control width-3"
									id="interestCalculationMode">
									<option>Select Interest Calculation Mode</option>
									<option>Daily</option>
									<option>Weekly</option>
									<option>Mothly</option>
									<option>Quartly</option>
									<option>Half Yearly</option>
									<option>Yearly</option>
								</select>
							</div>
							<div class="clearfix"></div>
							<hr>
							<div class="form-group col-md-4">
								<label class="form-label" for="">Required Items</label>
								<div class="checkbox">
									<label> <input type="checkbox" id="guaranterRequired">
										Guaranter Required
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="panCardRequired">
										PAN Card Required
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="idetityRequired">
										Identity Proof Required
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="addressRequired">
										Address Proof Required
									</label>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="">Identity Proof
									Documents</label>
								<div class="checkbox">
									<label> <input type="checkbox"> Voter Id Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Driving
										Liscence
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> PAN Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Adhar Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Student
										Isentity Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Govt Office
										Issued Identity Card
									</label>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="">Address Proof Documents</label>
								<div class="checkbox">
									<label> <input type="checkbox"> Voter Id Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Driving
										Liscence
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> PAN Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Adhar Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Student
										Isentity Card
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox"> Govt Office
										Issued Identity Card
									</label>
								</div>
							</div>

							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->
						<div class="clearfix"></div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Create</button>
						</div>
					</form>
				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
	<div class="clearfix"></div>
	<!--Nominee Form-->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Nominee Details</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- form start -->
					<form role="form">
						<div class="box-body">
							<label class="form-label">Nominee 1 Details:</label> <label
								class="form-label" for="nominee1minorId">&nbsp;&nbsp;&nbsp;&nbsp;Minor</label>
							<label> <input type="checkbox"> Yes
							</label>
							<div class="clearfix"></div>
							<!--In case of Nominee is minor this address will be Guardian's address -->
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1NameId">Name</label> <input
									type="text" name="nominee1Name" class="form-control width-3"
									id="nominee1NameId" placeholder="Name">
							</div>

							<div class="form-group col-md-4">
								<div class="col-3-4">
									<label class="form-label" for="nominee1DobId">Date of
										Birth</label> <input type="text" name="nominee1Dob"
										class="form-control" id="nominee1DobId"
										placeholder="Date of Birth">
								</div>
								<div class="col-1-4">
									<label class="form-label" for="nominee1AgeId">Age</label> <input
										type="text" name="nominee1Age" class="form-control"
										id="nominee1AgeId" placeholder="Age">
								</div>
							</div>
							<div class="form-group col-md-4">
								<div class="col-3-4">
									<label class="form-label" for="nominee1RelationId">Relation</label>
									<input type="text" name="nominee1Relation" class="form-control"
										id="nominee1RelationId" placeholder="Relation">
								</div>
								<div class="col-1-4">
									<label class="form-label" for="nominee1PercentageId">Percentage</label>
									<input type="text" name="nominee1Percentage"
										class="form-control" id="nominee1PercentageId" placeholder="%">
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1GuardianNameId">Guardian
									Name</label> <input type="text" name="nominee1GuardianName"
									class="form-control width-3" id="nominee1GuardianNameId"
									placeholder="Guardian Name">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1GuardianRelationId">Guardian
									Relation</label> <input type="text" name="nominee1GuardianRelation"
									class="form-control width-3" id="nominee1GuardianRelationId"
									placeholder="Guardian Relation">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1Addr1Id">Address
									Line 1</label> <input type="text" name="nominee1Addr1"
									class="form-control width-3" id="nominee1Addr1Id"
									placeholder="Address Line 1">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1Addr2Id">Address
									Line 2</label> <input type="text" name="nominee1Addr2"
									class="form-control width-3" id="nominee1Addr2Id"
									placeholder="Address Line 2">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1LandmarkId">Landmark</label>
								<input type="text" name="nominee1Landmark"
									class="form-control width-3" id="nominee1LandmarkId"
									placeholder="Landmark">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1CityId">City</label> <input
									type="text" name="nominee1City" class="form-control width-3"
									id="nominee1CityId" placeholder="City">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1DistrictId">District</label>
								<input type="text" name="nominee1District"
									class="form-control width-3" id="nominee1DistrictId"
									placeholder="District">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1StateId">State</label> <input
									type="text" name="nominee1State" class="form-control width-3"
									id="nominee1StateId" placeholder="State">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1CountryId">Country</label>
								<input type="text" name="nominee1Country"
									class="form-control width-3" id="nominee1CountryId"
									placeholder="Country">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1PinId">PIN</label> <input
									type="text" name="nominee1Pin" class="form-control width-3"
									id="nominee1PinId" placeholder="PIN">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee1ContactNoId">Contact
									No.</label> <input type="text" name="nominee1ContactNo"
									class="form-control width-3" id="nominee1ContactNoId"
									placeholder="Contact No.">
							</div>
							<div class="clearfix"></div>
						</div>
						<!-- /.box-body -->
						<div class="box-body">
							<label class="form-label">Nominee 2 Details:</label> <label
								class="form-label" for="nominee2minorId">&nbsp;&nbsp;&nbsp;&nbsp;Minor</label>
							<label> <input type="checkbox"> Yes
							</label>
							<div class="clearfix"></div>
							<!--In case of Nominee is minor this address will be Guardian's address -->
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2NameId">Name</label> <input
									type="text" name="nominee2Name" class="form-control width-3"
									id="nominee2NameId" placeholder="Name">
							</div>
							<div class="form-group col-md-4">
								<div class="col-3-4">
									<label class="form-label" for="nominee2DobId">Date of
										Birth</label> <input type="text" name="nominee2Dob"
										class="form-control" id="nominee2DobId"
										placeholder="Date of Birth">
								</div>
								<div class="col-1-4">
									<label class="form-label" for="nominee2AgeId">Age</label> <input
										type="text" name="nominee2Age" class="form-control"
										id="nominee2AgeId" placeholder="Age">
								</div>
							</div>
							<div class="form-group col-md-4">
								<div class="col-3-4">
									<label class="form-label" for="nominee2RelationId">Relation</label>
									<input type="text" name="nominee2Relation" class="form-control"
										id="nominee2RelationId" placeholder="Relation">
								</div>
								<div class="col-1-4">
									<label class="form-label" for="nominee2PercentageId">Percentage</label>
									<input type="text" name="nominee2Percentage"
										class="form-control" id="nominee2PercentageId" placeholder="%">
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2GuardianNameId">Guardian
									Name</label> <input type="text" name="nominee2GuardianName"
									class="form-control width-3" id="nominee2GuardianNameId"
									placeholder="Guardian Name">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2GuardianRelationId">Gaurdian
									Relation</label> <input type="text" name="nominee2GuardianRelation"
									class="form-control width-3" id="nominee2GuardianRelationId"
									placeholder="Guardian Relation">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2Addr1Id">Address
									Line 1</label> <input type="text" name="nominee2Addr1"
									class="form-control width-3" id="nominee2Addr1Id"
									placeholder="Address Line 1">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2Addr2Id">Address
									Line 2</label> <input type="text" name="nominee2Addr2"
									class="form-control width-3" id="nominee2Addr2Id"
									placeholder="Address Line 2">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2LandmarkId">Landmark</label>
								<input type="text" name="nominee2Landmark"
									class="form-control width-3" id="nominee2LandmarkId"
									placeholder="Landmark">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2CityId">City</label> <input
									type="text" name="nominee2City" class="form-control width-3"
									id="nominee2CityId" placeholder="City">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2DistrictId">District</label>
								<input type="text" name="nominee2District"
									class="form-control width-3" id="nominee2DistrictId"
									placeholder="District">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2StateId">State</label> <input
									type="text" name="nominee2State" class="form-control width-3"
									id="nominee2StateId" placeholder="State">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2CountryId">Country</label>
								<input type="text" name="nominee2Country"
									class="form-control width-3" id="nominee2CountryId"
									placeholder="Country">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2PinId">PIN</label> <input
									type="text" name="nominee2Pin" class="form-control width-3"
									id="nominee2PinId" placeholder="PIN">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="nominee2ContactNoId">Contact
									No.</label> <input type="text" name="nominee2ContactNo"
									class="form-control width-3" id="nominee2ContactNoId"
									placeholder="Contact No.">
							</div>
							<div class="clearfix"></div>

						</div>
						<!-- /.box-body -->
						<div class="box-footer next-btn">
							<button type="submit" class="btn btn-primary">Next</button>
						</div>
					</form>
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
	<!--Nomineee Form End-->
	<!--View Account Type-->
	<h4>View Account Type</h4>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Account Type List</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body table-responsive">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th style="width: 20%;">Account Master Type</th>
									<th style="width: 32%;">Account Type</th>
									<th style="width: 12%">Min Balance</th>
									<th style="width: 10%;">Interest</th>
									<th style="width: 13%;">Interest Mode</th>
									<th style="width: 13%;">Status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 4.0</td>
									<td>10000</td>
									<td>12.59</td>
									<td>Daily</td>
									<td>Active</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 5.0</td>
									<td>10000</td>
									<td>14.20</td>
									<td>yearly</td>
									<td>InActive</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 5.5</td>
									<td>10000</td>
									<td>12.59</td>
									<td>Monthly</td>
									<td>Active</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 6</td>
									<td>10000</td>
									<td>12.00</td>
									<td>Quartly</td>
									<td>Active</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 7</td>
									<td>10000</td>
									<td>12.59</td>
									<td>Half Yearly</td>
									<td>Active</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
</aside>
<!-- /.right-side -->
<script	src="resources/js/plugins//jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<!-- Bootstrap -->
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function() {
        $("#example1").dataTable();
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
<script>
	function loadAccountTypeEditForm() {
		alert("in");
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			alert(xmlhttp.readyState);
			alert(xmlhttp.status);
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				alert(xmlhttp.responseText);
				document.getElementById("accountTypeEdit").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "verification-document", true);
		xmlhttp.send();
	}
</script>