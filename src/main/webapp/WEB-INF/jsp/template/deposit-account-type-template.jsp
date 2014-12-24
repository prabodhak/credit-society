<div class="form-group col-md-3">
	<label class="form-label" for="accountNameId">Account Name</label>
	<input type="text" name="accountName" class="form-control" id="accountNameId"
		placeholder="Account Name">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="memberTypeId">Member Type</label>
	<select name="memberType" class="form-control" id="memberTypeId">
		<option value="1">Select Member Type</option>
		<option value="2">A</option>
		<option value="3">B</option>
		<option value="3">C</option>
	</select>
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="minimumBalanceId">Minimum
		Balance</label> <input type="text" name="minimumBalance" class="form-control"
		id="minimumBalanceId" placeholder="Minimum Balance">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="debitCashLimitId">Debit Cash Limit
		</label> <input type="text" name="debitCashLimit" class="form-control"
		id="debitCashLimitId" placeholder="Debit Cash Limit">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="creditCashLimitId">Credit Cash Limit
		</label> <input type="text" name="creditCashLimit" class="form-control"
		id="creditCashLimitId" placeholder="Credit Cash Limit">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="interestRateId">Interest
		Rate</label> <input type="text" name="interestRate" class="form-control"
		id="interestRateId" placeholder="Interest Rate">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="interestCalculationModeId">Interest
		Calculation Mode</label> <select class="form-control"
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
<div class="form-group col-md-3">
	<label class="form-label" for="applyDepositRuleDate">Apply Date</label>
	<input type="text" name="applyDepositRuleDate" class="form-control" id="applyDepositRuleDateId"
		placeholder="Apply Date" data-date-format="dd MM yyyy" readonly="true"/>
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
<div class="box-footer">
	<button type="submit" id="accountTypeCreateButId" class="btn btn-primary">Create</button>
</div>
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