<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<div id="main-content">	
	<aside class="right-side">
		<section class="content menu-tool-bar">
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
									<label class="form-label" for="accountTypeId">Account Type</label>
									<select name="accountType" class="form-control width-3" id="accountTypeId">
										<option value="1">Select Account Type</option>
										<option value="2">Loan</option>
										<option value="3">Deposite</option>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="accountNameId">Account Name</label>
									<input type="text" name="accountName" class="form-control width-3" id="accountNameId"
										placeholder="Account Name">
								</div>
								<div class="clearfix"></div>
								<div class="form-group col-md-4">
									<label class="form-label" for="minimumBalanceId">Minimum
										Balance</label> <input type="text" name="minimumBalance" class="form-control width-3"
										id="minimumBalanceId" placeholder="Minimum Balance">
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="interestRateId">Interest
										Rate</label> <input type="text" name="interestRate" class="form-control width-3"
										id="interestRateId" placeholder="Interest Rate">
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="interestCalculationModeId">Interest
										Calculation Mode</label> <select class="form-control width-3"
										id="interestCalculationModeId">
										<option>Select Interest Calculation Mode</option>
										<option value="1">Daily</option>
										<option value="2">Weekly</option>
										<option value="3">Mothly</option>
										<option value="4">Quartly</option>
										<option value="5">Half Yearly</option>
										<option value="6">Yearly</option>
									</select>
								</div>
								<div class="clearfix"></div>
								<hr>
								<div class="form-group col-md-4">
									<label class="form-label">Required Items</label>
									<div class="checkbox">
										<label> <input type="checkbox" name="guarantorRequired" id="guarantorRequiredId">
											Guarantor Required
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="panCardRequired" id="panCardRequiredId">
											PAN Card Required
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="idetityRequired" id="idetityRequiredId">
											Identity Proof Required
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="addressRequired" id="addressRequiredId">
											Address Proof Required
										</label>
									</div>
								</div>
								<div class="form-group col-md-4">
									<label class="form-label">Identity Proof
										Documents</label>
									<div class="checkbox">
										<label> <input type="checkbox" name="voterId" id="voterIdId"> Voter Id Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="drivingLiscence" id="drivingLiscenceId"> Driving
											Liscence
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="panCard" id="panCardId"> PAN Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="aadharCard" id="aadharCardId"> Aadhar Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="studentIdentity" id="studentIdentityId"> Student
											Identity Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="govtOfficeIdentity" id="govtOfficeIdentityId"> Govt Office
											Issued Identity Card
										</label>
									</div>
								</div>
								<div class="form-group col-md-4">
									<label class="form-label">Address Proof Documents</label>
									<div class="checkbox">
										<label> <input type="checkbox" name="voterId" id="voterIdId"> Voter Id Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="drivingLiscence" id="drivingLiscenceId"> Driving
											Liscence
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="panCard" id="panCardId"> PAN Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="aadharCard" id="aadharCardId"> Aadhar Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="studentIdentity" id="studentIdentityId"> Student
											Identity Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="govtOfficeIdentity" id="govtOfficeIdentityId"> Govt Office
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
							<h3 class="box-title">Account Type Edit</h3>
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
									<label class="form-label" for="accountTypeId">Account Type</label>
									<select name="accountType" class="form-control width-3" id="accountTypeId">
										<option value="1">Select Account Type</option>
										<option value="2">Loan</option>
										<option value="3">Deposite</option>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="accountNameId">Account Name</label>
									<input type="text" name="accountName" class="form-control width-3" id="accountNameId"
										placeholder="Account Name">
								</div>
								<div class="clearfix"></div>
								<div class="form-group col-md-4">
									<label class="form-label" for="minimumBalanceId">Minimum
										Balance</label> <input type="text" name="minimumBalance" class="form-control width-3"
										id="minimumBalanceId" placeholder="Minimum Balance">
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="interestRateId">Interest
										Rate</label> <input type="text" name="interestRate" class="form-control width-3"
										id="interestRateId" placeholder="Interest Rate">
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="interestCalculationModeId">Interest
										Calculation Mode</label> <select class="form-control width-3"
										id="interestCalculationModeId">
										<option>Select Interest Calculation Mode</option>
										<option value="1">Daily</option>
										<option value="2">Weekly</option>
										<option value="3">Mothly</option>
										<option value="4">Quartly</option>
										<option value="5">Half Yearly</option>
										<option value="6">Yearly</option>
									</select>
								</div>
								<div class="clearfix"></div>
								<hr>
								<div class="form-group col-md-4">
									<label class="form-label">Required Items</label>
									<div class="checkbox">
										<label> <input type="checkbox" name="guarantorRequired" id="guarantorRequiredId">
											Guarantor Required
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="panCardRequired" id="panCardRequiredId">
											PAN Card Required
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="idetityRequired" id="idetityRequiredId">
											Identity Proof Required
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="addressRequired" id="addressRequiredId">
											Address Proof Required
										</label>
									</div>
								</div>
								<div class="form-group col-md-4">
									<label class="form-label">Identity Proof
										Documents</label>
									<div class="checkbox">
										<label> <input type="checkbox" name="voterId" id="voterIdId"> Voter Id Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="drivingLiscence" id="drivingLiscenceId"> Driving
											Liscence
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="panCard" id="panCardId"> PAN Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="aadharCard" id="aadharCardId"> Aadhar Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="studentIdentity" id="studentIdentityId"> Student
											Identity Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="govtOfficeIdentity" id="govtOfficeIdentityId"> Govt Office
											Issued Identity Card
										</label>
									</div>
								</div>
								<div class="form-group col-md-4">
									<label class="form-label">Address Proof Documents</label>
									<div class="checkbox">
										<label> <input type="checkbox" name="voterId" id="voterIdId"> Voter Id Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="drivingLiscence" id="drivingLiscenceId"> Driving
											Liscence
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="panCard" id="panCardId"> PAN Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="aadharCard" id="aadharCardId"> Aadhar Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="studentIdentity" id="studentIdentityId"> Student
											Identity Card
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" name="govtOfficeIdentity" id="govtOfficeIdentityId"> Govt Office
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
							<table id="accountTypeListId" class="table table-bordered table-striped">
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
<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<script type="text/javascript">
    $(function() {
        $("#accountTypeListId").dataTable();
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
</div>