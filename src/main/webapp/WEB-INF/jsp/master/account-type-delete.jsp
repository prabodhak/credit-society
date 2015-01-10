<div id="mainContentId">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
	<aside class="right-side">
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<div class="col-md-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Account Type List</h3>
						</div>
						<table id="accountTypeListDeleteId" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th style="width:5%;"></th>
									<th style="width:15%;">Account Master Type</th>
									<th style="width:32%;">Account Type</th>
									<th style="width:12%">Min Balance</th>
									<th style="width:10%;">Interest</th>
									<th style="width:13%;">Interest Mode</th>
									<th style="width:13%;">Status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="details-control" data-toggle="collapse" data-target="#row1DetailsId"></td>
									<td>Trident</td>
									<td>Internet Explorer 4.0</td>
									<td>10000</td>
									<td>12.59</td>
									<td>Daily</td>
									<td>Active</td>
								</tr>
								<tr id="row1DetailsId" class="collapse out">
									<td colspan="7">
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
									</td>
								</tr>
								<tr>
									<td class="details-control" data-toggle="collapse" data-target="#row2DetailsId"></td>
									<td>Trident</td>
									<td>Internet Explorer 5.0</td>
									<td>10000</td>
									<td>14.20</td>
									<td>yearly</td>
									<td>InActive</td>
								</tr>
								<tr id="row2DetailsId" class="collapse out">
									<td colspan="7">
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
									</td>
								</tr>
								<tr>
									<td class="details-control" data-toggle="collapse" data-target="#row3DetailsId"></td>
									<td>Trident</td>
									<td>Internet Explorer 5.5</td>
									<td>10000</td>
									<td>12.59</td>
									<td>Monthly</td>
									<td>Active</td>
								</tr>
								<tr id="row3DetailsId" class="collapse out">
									<td colspan="7">
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
									</td>
								</tr>
								<tr>
									<td class="details-control" data-toggle="collapse" data-target="#row4DetailsId"></td>
									<td>Trident</td>
									<td>Internet Explorer 6</td>
									<td>10000</td>
									<td>12.00</td>
									<td>Quartly</td>
									<td>Active</td>
								</tr>
								<tr id="row4DetailsId" class="collapse out">
									<td colspan="7">
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
									</td>
								</tr>
								<tr>
									<td class="details-control" data-toggle="collapse" data-target="#row5DetailsId"></td>
									<td>Trident</td>
									<td>Internet Explorer 7</td>
									<td>10000</td>
									<td>12.59</td>
									<td>Half Yearly</td>
									<td>Active</td>
								</tr>
								<tr id="row5DetailsId" class="collapse out">
									<td colspan="7">
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
									</td>
								</tr>
							</tbody>									
						</table>
						<div style="text-align:right;">
							<ul class="pagination" >
								<li class="prev disabled"><a href="#">? Previous</a></li>
								<li class="active"><a href="#">1</a></li>
								<li class="next disabled"><a href="#">Next ? </a>
								</li>
							</ul>
						</div>						
					</div>
				</div>
			</div>
		</section>
	</aside>
	<script>
	    // Add event listener for opening and closing details
		$('#accountTypeListViewId tbody').on('click', 'td.details-control', function () {
			var tr = $(this).closest('tr');
			if( tr.hasClass('shown') )
			{
				tr.removeClass('shown');
			}
			else
			{
				tr.addClass('shown');
			}
		} );
		
	    $('#accountTypeListDeleteId').addClass('active');
	</script>
</div>