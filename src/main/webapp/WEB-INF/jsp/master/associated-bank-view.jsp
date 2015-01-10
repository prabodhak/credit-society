<div id="crudMenuId">
	<jsp:directive.include file="../common/crud-menu.jsp" />
</div>
<div id="mainContentId">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
	<!-- Right side column. Contains the navbar and content of the page -->
	<aside class="right-side">
		<!-- Main content -->
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<div class="col-md-12">
					<!-- form heading -->
					<div class="box box-solid box-primary">
						<div class="box-header">
							<c:choose>
								<c:when test="${operation eq 'edit'}">
									<h3 class="box-title"><spring:message code="master$associatedBank$edit"/></h3>
								</c:when>
								<c:otherwise>
									<h3 class="box-title"><spring:message code="master$associatedBank$view"/></h3>
								</c:otherwise>
							</c:choose>
							<div class="box-tools pull-right">
								<button class="btn btn-primary btn-sm" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<c:if test="${not empty message}">
							<div id="message" class="success">${message}</div>	
				  		</c:if>
						<table id="associatedBankViewId" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th style="width:5%;"></th>
									<th style="width:25%"><spring:message code="master$associatedBank$bankName.label"/></th>
									<th style="width:25%;"><spring:message code="master$associatedBank$accountHolderName.label"/></th>
									<th style="width:15%;"><spring:message code="master$associatedBank$accountNumber.label"/></th>
									<th style="width:15%;"><spring:message code="city.label"/></th>
									<th style="width:10%;"><spring:message code="master$associatedBank$branchCode.label"/></th>
									<th style="width:5%;"><spring:message code="status.label"/></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="bank" items="${associatedBanks}">
								<tr>
									<td class="details-control" data-toggle="collapse" data-target="#row1DetailsId"></td>
									<c:choose>
												<c:when test="${operation eq 'edit'}">
													<td><a href="master/associated-bank/${bank.id}/edit">${bank.bankName}</a></td>
												</c:when>
												<c:otherwise>
													<td>${bank.bankName}</td>
												</c:otherwise>
									</c:choose>
									<td>${bank.accountHolderName}</td>
									<td>${bank.accountNumber}</td>
									<td>${bank.branchAddress.city}</td>
									<td>${bank.branchCode}</td>
									<td>Active</td>
								</tr>
								<tr id="row1DetailsId" class="collapse out">
									<td colspan="7">
										<div class="form-group col-md-3">
											<label class="form-label" for="ifscCodeId"><spring:message code="master$associatedBank$ifscCode.label"/> </label>
											<input type="text" name="ifscCode" id="ifscCodeId" class="form-control" value="${bank.ifscCode}" readonly="readonly"/>
										</div>	
										<div class="form-group col-md-3">
											<label class="form-label" for="micrId"><spring:message code="master$associatedBank$micr.label"/></label>
											<input type="text" name="micr" id="micrId" class="form-control"value="${bank.micr}" readonly="readonly"/>
										</div>	
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankAddr1Id"><spring:message code="addressLine1.label"/></label>
											<input type="text" name="associatedBankAddr1" id="associatedBankAddr1Id" class="form-control"value="${bank.branchAddress.addressLine1}" readonly="readonly"/>
										</div>
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankAddr2Id"><spring:message code="addressLine2.label"/></label>
											<input type="text" name="associatedBankAddr1" id="associatedBankAddr1Id" class="form-control"value="${bank.branchAddress.addressLine2}" readonly="readonly"/>
										</div>
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankLandmarkId"><spring:message code="landmark.label"/></label>
											<input type="text" name="associatedBankLandmark" id="associatedBankLandmarkId" class="form-control"value="${bank.branchAddress.landmark}" readonly="readonly"/>
										</div>
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankCityId"><spring:message code="city.label"/></label>
											<input type="text" name="associatedBankCity" id="associatedBankCityId" class="form-control"value="${bank.branchAddress.city}" readonly="readonly"/>
										</div>
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankDistrictId"><spring:message code="district.label"/></label>
											<input type="text" name="associatedBankDistrict" id="associatedBankDistrictId" class="form-control"value="${bank.branchAddress.district}" readonly="readonly"/>
										</div>
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankStateId"><spring:message code="state.label"/></label>
											<input type="text" name="associatedBankState" id="associatedBankStateId" class="form-control"value="${bank.branchAddress.state}" readonly="readonly"/>
										</div>
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankCountryId"><spring:message code="country.label"/></label>
											<input type="text" name="associatedBankCountry" id="associatedBankCountryId" class="form-control"value="${bank.branchAddress.country}" readonly="readonly"/>
										</div>
										<div class="form-group col-md-3">
											<label class="form-label" for="associatedBankPinId"><spring:message code="pinCode.label"/></label>
											<input type="text" name="associatedBankPin" id="associatedBankPinId" class="form-control"value="${bank.branchAddress.pincode}" readonly="readonly"/>
										</div>
									</td>
								</tr>
								</c:forEach>
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
	
	/*var operation="${operation}";
	if(operation == "edit" ){
		$('#crudMenuEditId').addClass('active');
	}else if( operation == "view" ){
		$('#crudMenuViewId').addClass('active');	
	}*/
	</script>
</div>