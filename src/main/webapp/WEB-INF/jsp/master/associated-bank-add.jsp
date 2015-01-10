<div id="mainContentId">	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
	<!-- DATA TABLES -->
	<link href="resources/css/datatables/dataTables.bootstrap.css"
		rel="stylesheet" type="text/css" />
	<!-- Right side column. Contains the navbar and content of the page -->
	<aside class="right-side">
		<!-- Main content -->
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<div class="col-md-12">
					<!-- form heading -->
					<div class="box box-solid box-primary">
						<div class="box-header">
							<h3 class="box-title"><spring:message code="master$associatedBank$add"/></h3>
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
				  		<c:choose>
					        <c:when test="${associatedBank['new']}">
					        	<c:set var="method" value="post"/>
					        	<c:set var="action" value="add"/>
					        </c:when>
					        <c:otherwise>
					        	<c:set var="method" value="put"/>
					        	<c:set var="action" value="edit"/>
					        </c:otherwise>
					    </c:choose>
						<form:form role="form" modelAttribute="associatedBank" action="master/associated-bank/${action}" method="${method}">
							<div class="box-body">
								<div class="form-group col-md-3">
									<label class="form-label" for="accountHolderNameId"><spring:message code="master$associatedBank$accountHolderName.label"/></label>
									<form:input type="text" name="accountHolderName" class="form-control"
										id="accountHolderNameId" placeholder="Account Holder Name" path="accountHolderName" />
								</div>		
								<div class="form-group col-md-3">
									<label class="form-label" for="accountNumberId"><spring:message code="master$associatedBank$accountNumber.label"/></label>
									<form:input type="text" name="accountNumber" class="form-control"
										id="accountNumberId" placeholder="Account Number" path="accountNumber" />
								</div>	
								<div class="form-group col-md-3">
									<label class="form-label" for="bankNameId"><spring:message code="master$associatedBank$bankName.label"/></label>
									<form:input type="text" name="bankName" class="form-control"
										id="bankNameId" placeholder="Bank Name" path="bankName" />
								</div>	
								<div class="form-group col-md-3">
									<label class="form-label" for="branchCodeId"><spring:message code="master$associatedBank$branchCode.label"/></label>
									<form:input type="text" name="branchCode" class="form-control"
										id="branchCodeId" placeholder="Branch Code" path="branchCode" />
								</div>	
								<div class="form-group col-md-3">
									<label class="form-label" for="ifscCodeId"><spring:message code="master$associatedBank$ifscCode.label"/> </label>
									<form:input type="text" name="ifscCode" class="form-control"
										id="ifscCodeId" placeholder="IFSC Code" path="ifscCode" />
								</div>	
								<div class="form-group col-md-3">
									<label class="form-label" for="micrId"><spring:message code="master$associatedBank$micr.label"/></label>
									<form:input type="text" name="micr" class="form-control"
										id="micrId" placeholder="MICR" path="micr" />
								</div>	
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankAddr1Id"><spring:message code="addressLine1.label"/></label>
									<form:input type="text" name="associatedBankAddr1"
										class="form-control" id="associatedBankAddr1Id"
										placeholder="Address Line 1"
										path="branchAddress.addressLine1" />
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankAddr2Id"><spring:message code="addressLine2.label"/></label>
									<form:input type="text" name="associatedBankAddr2"
										class="form-control" id="associatedBankAddr2Id"
										placeholder="Address Line 2"
										path="branchAddress.addressLine2" />
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankLandmarkId"><spring:message code="landmark.label"/></label>
									<form:input type="text" name="associatedBankLandmark"
										class="form-control" id="associatedBankLandmarkId"
										placeholder="Landmark" path="branchAddress.landmark" />
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankCityId"><spring:message code="city.label"/></label>
									<form:input type="text" name="associatedBankCity"
										class="form-control" id="associatedBankCityId" placeholder="City"
										path="branchAddress.city" />
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankDistrictId"><spring:message code="district.label"/></label>
									<form:input type="text" name="associatedBankDistrict"
										class="form-control" id="associatedBankDistrictId"
										placeholder="District" path="branchAddress.district" />
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankStateId"><spring:message code="state.label"/></label>
									<form:input type="text" name="associatedBankState"
										class="form-control" id="associatedBankStateId" placeholder="State"
										path="branchAddress.state" />
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankCountryId"><spring:message code="country.label"/></label>
									<form:input type="text" name="associatedBankCountry"
										class="form-control" id="associatedBankCountryId"
										placeholder="Country" path="branchAddress.country" />
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="associatedBankPinId"><spring:message code="pinCode.label"/></label>
									<form:input type="text" name="associatedBankPin"
										class="form-control" id="associatedBankPinId" placeholder="PIN"
										path="branchAddress.pincode" />
								</div>
								<div class="clearfix"></div>		
								<div class="box-footer add-verification-docs">
									<c:choose>
						                <c:when test="${associatedBank['new']}">
						                    <button type="submit" class="btn btn-success"><spring:message code="button$add"/></button>
						                </c:when>
						                <c:otherwise>
						                    <button type="submit" class="btn btn-success"><spring:message code="button$update"/></button>
						                </c:otherwise>
						            </c:choose>
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
	
	//$('#crudMenuAddId').addClass('active');
	</script>
</div>