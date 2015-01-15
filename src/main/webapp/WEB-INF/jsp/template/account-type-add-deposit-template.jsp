<div id="ajaxResponseId">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- JS -->
	<!-- jQuery 2.1.1 -->
	<script	src="resources/js/plugins/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
	<!-- jQuery UI 1.10.3 -->
	<script src="resources/js/plugins/jquery/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
	<!-- jQuery form validation v1.13.1-->
	<script src="resources/js/plugins/jquery/jquery.validate.min.js" type="text/javascript"></script>
<form:form role="form" action="master/account-type/add" method="post" modelAttribute="accountType">
	<div class="form-group col-md-3">
		<label class="form-label" for="accountNameId">Account Name</label>
		<form:input type="text" class="form-control" id="accountNameId"
			placeholder="Account Name" path="name"/>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="memberType">Member Type</label>
		<form:select name="memberType" class="form-control" id="memberTypeId" multiple="true" path="memberTypes">
			<option value="1">Select Member Type</option>
			<option value="2">A</option>
			<option value="3">B</option>
			<option value="3">C</option>
		</form:select>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="minimumBalance">Minimum
			Balance</label> <form:input type="text" class="form-control"
			id="minimumBalanceId" placeholder="Minimum Balance" path="minimumBalance"/>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="debitCashLimit">Debit Cash Limit
			</label> <form:input type="text" class="form-control"
			id="debitCashLimitId" placeholder="Debit Cash Limit" path="debitCashLimit"/>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="creditCashLimit">Credit Cash Limit
			</label> <form:input type="text" class="form-control"
			id="creditCashLimitId" placeholder="Credit Cash Limit" path="creditCashLimit"/>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="interestRate">Interest
			Rate</label> <form:input type="text" class="form-control"
			id="interestRateId" placeholder="Interest Rate" path="interestRate"/>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="penaltyRate">Penalty
			Rate</label> <input type="text" name="penaltyRate" class="form-control"
			id="penaltyRateId" placeholder="Penalty Rate">
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="interestCalculationMode">Interest
			Calculation Mode</label> <form:select class="form-control"
			id="interestCalculationModeId" path="interestCalculationMode">
			<option>Select Interest Calculation Mode</option>
			<option value="daily">Daily</option>
			<option value="Weekly">Weekly</option>
			<option value="Mothly">Mothly</option>
			<option value="Quartly">Quartly</option>
			<option value="5">Half Yearly</option>
			<option value="6">Yearly</option>
		</form:select>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="penaltyCalculationMode">Penalty
			Calculation Mode</label> <select class="form-control"
			id="penaltyCalculationModeId">
			<option>Select Penalty Calculation Mode</option>
			<option value="1">Daily</option>
			<option value="2">Weekly</option>
			<option value="3">Mothly</option>
			<option value="4">Quartly</option>
			<option value="5">Half Yearly</option>
			<option value="6">Yearly</option>
		</select>
	</div>
	<div class="form-group col-md-3">
		<label class="form-label" for="applyDepositRuleDate">Apply Date</label>
		<form:input type="text" class="form-control" id="applyDepositRuleDateId"
			placeholder="Apply Date" data-date-format="dd MM yyyy" readonly="true" path="applyDate"/>
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
			<label> <form:checkbox id="panCardRequiredId" path="panNumberRequired"/>
				PAN Card Required
			</label>
		</div>
		<form:checkboxes items="${verificationDocuemntTypes}" path="requiredDocuments"/>
		<c:forEach var="doc" items="${vdocs}">
			<h4>${doc.key}</h4>
			<form:checkboxes items="${doc.value}" path=""/>
		</c:forEach>
		<%-- <div class="checkbox">
			<label> <form:checkbox id="idetityRequiredId" path="identityProofRequired"/>
				Identity Proof Required
			</label>
		</div>
		<div class="checkbox">
			<label> <form:checkbox  id="addressRequiredId" path="addressProofRequired"/>
				Address Proof Required
			</label>
		</div> --%>
	</div>
	<%-- <label><form:checkboxes items="${identityDocuments}" path="identityProofDocuments" />Voter Id Card</label> --%>
	<div class="form-group col-md-4">
		<label class="form-label">Identity Proof
			Documents</label>
		<!-- <div class="checkbox">
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
		</div> -->
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
	<div class="box-footer">
		<button type="submit" id="accountTypeCreateButId" class="btn btn-primary">Create</button>
	</div>
</form:form>

	<!-- JS -->
	<!-- Bootstrap -->
	<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- common for all pages -->
	<script src="resources/js/common.js" type="text/javascript"></script>
	
	<link href="resources/css/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
	<script type="text/javascript" src="resources/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
	
	<script>
	// datetimepicker
	$('#applyDepositRuleDateId').datetimepicker({
	    weekStart: 1,
	    todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
	});
	</script>
</div>
