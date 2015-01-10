<div id="ajaxResponseId">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
	<jsp:directive.include file="../common/crud-menu.jsp" />
	<!-- Right side column. Contains the navbar and content of the page -->
	<div id="body">	
		<aside class="right-side">
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<!-- form heading -->
						<div class="box box-solid box-primary">						
							<div class="box-header">
								<h3 class="box-title"><spring:message code="master$associatedBank$delete"/></h3>
								<div class="box-tools pull-right">
									<button class="btn btn-primary btn-sm" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form:form action="master/associated-bank/delete" method="post">
						    <div class="box-body table-responsive">
								<table id="associatedBankViewId" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th style="width:4%;"></th>
											<th style="width:4%;"></th>
											<th style="width:25%"><spring:message code="master$associatedBank$bankName.label"/></th>
											<th style="width:22%;"><spring:message code="master$associatedBank$accountHolderName.label"/></th>
											<th style="width:15%;"><spring:message code="master$associatedBank$accountNumber.label"/></th>
											<th style="width:15%;"><spring:message code="city.label"/></th>
											<th style="width:10%;"><spring:message code="master$associatedBank$branchCode.label"/></th>
											<th style="width:5%;"><spring:message code="status.label"/></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="bank" items="${associatedBanks}">
										<tr>
											<td>
												<input type="checkbox" name="deleted" id="associatedBankId" value="${bank.id}"/>
											</td>
											<td class="details-control" data-toggle="collapse" data-target="#row1DetailsId"></td>
											<td>${bank.bankName}</td>
											<td>${bank.accountHolderName}</td>
											<td>${bank.accountNumber}</td>
											<td>${bank.branchAddress.city}</td>
											<td>${bank.branchCode}</td>
											<td>Active</td>
										</tr>
										<tr id="row1DetailsId" class="collapse out">
											<td colspan="8">
												<div class="form-group col-md-3">
													<label class="form-label" for="ifscCodeId"><spring:message code="master$associatedBank$ifscCode.label"/> </label>
													<input type="text" name="ifscCode" id="ifscCodeId" class="form-control" value="${associatedBank.ifscCode}" readonly="readonly"/>
												</div>	
												<div class="form-group col-md-3">
													<label class="form-label" for="micrId"><spring:message code="master$associatedBank$micr.label"/></label>
													<input type="text" name="micr" id="micrId" class="form-control"value="${associatedBank.micr}" readonly="readonly"/>
												</div>	
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankAddr1Id"><spring:message code="addressLine1.label"/></label>
													<input type="text" name="associatedBankAddr1" id="associatedBankAddr1Id" class="form-control"value="${associatedBank.branchAddress.addressLine1}" readonly="readonly"/>
												</div>
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankAddr2Id"><spring:message code="addressLine2.label"/></label>
													<input type="text" name="associatedBankAddr1" id="associatedBankAddr1Id" class="form-control"value="${associatedBank.branchAddress.addressLine2}" readonly="readonly"/>
												</div>
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankLandmarkId"><spring:message code="landmark.label"/></label>
													<input type="text" name="associatedBankLandmark" id="associatedBankLandmarkId" class="form-control"value="${associatedBank.branchAddress.landmark}" readonly="readonly"/>
												</div>
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankCityId"><spring:message code="city.label"/></label>
													<input type="text" name="associatedBankCity" id="associatedBankCityId" class="form-control"value="${associatedBank.branchAddress.city}" readonly="readonly"/>
												</div>
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankDistrictId"><spring:message code="district.label"/></label>
													<input type="text" name="associatedBankDistrict" id="associatedBankDistrictId" class="form-control"value="${associatedBank.branchAddress.district}" readonly="readonly"/>
												</div>
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankStateId"><spring:message code="state.label"/></label>
													<input type="text" name="associatedBankState" id="associatedBankStateId" class="form-control"value="${associatedBank.branchAddress.state}" readonly="readonly"/>
												</div>
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankCountryId"><spring:message code="country.label"/></label>
													<input type="text" name="associatedBankCountry" id="associatedBankCountryId" class="form-control"value="${associatedBank.branchAddress.country}" readonly="readonly"/>
												</div>
												<div class="form-group col-md-3">
													<label class="form-label" for="associatedBankPinId"><spring:message code="pinCode.label"/></label>
													<input type="text" name="associatedBankPin" id="associatedBankPinId" class="form-control"value="${associatedBank.branchAddress.pincode}" readonly="readonly"/>
												</div>
											</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							<div class="clearfix"></div>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary"><spring:message code="button$delete"/></button>
							</div>
							</form:form>				
						</div>
					</div>
				</div>
			</section>	
		</aside>
	</div>
	
	<script>
	// Add event listener for opening and closing details
	$('#loanAccountTypeViewBodyId tbody').on('click', 'td.details-control', function () {
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
	//alert($('#accountTypeId').attr('class'));
	
	//Add event listener for opening and closing details
	$('#associatedBankViewId tbody').on('click', 'td.details-control', function () {
		var tr = $(this).closest('tr');
		if( tr.hasClass('shown') )
		{
			tr.removeClass('shown');
		}
		else
		{
			tr.addClass('shown');
		}
	});
	
	//$('#crudMenuDeleteId').addClass('active');
	</script>
</div>