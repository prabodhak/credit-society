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
	<label class="form-label" for="maxLoanAmt">Max Loan Amount</label>
	<input type="text" name="maxLoanAmt" class="form-control" id="maxLoanAmtId"
		placeholder="Max Loan Amount">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="numOfInstallment">Num of Installment</label>
	<input type="text" name="numOfInstallment" class="form-control" id="numOfInstallmentId"
		placeholder="Num of Installment">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="startRepayment">Start Repayment</label>
	<input type="text" name="startRepayment" class="form-control" id="startRepaymentId"
		placeholder="Start Repayment">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="interestRate">Interest Rate</label>
	<input type="text" name="interestRate" class="form-control" id="interestRateId"
		placeholder="Interest Rate">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="penaltyRate">Penalty Rate</label>
	<input type="text" name="penaltyRate" class="form-control" id="penaltyRateId"
		placeholder="Penalty Rate">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="applyLoanRuleDate">Apply Date</label>
	<input type="text" name="applyLoanRuleDate" class="form-control" id="applyLoanRuleDateId"
		placeholder="Apply Date" data-date-format="dd MM yyyy" readonly="true"/>
</div>									
<div class="clearfix"></div>
<fieldset class="scheduler-border">
	<legend class="scheduler-border">Deduction Details</legend>
	<div class="col-md-2">
		<label class="form-label" for="fixedDeposit">Fixed Deposit</label>
		<input type="text" name="fixedDeposit" class="form-control" id="fixedDepositPerId"
			placeholder="Percentage">
		<span class="or">OR</span>
		<input type="text" name="fixedDeposit" class="form-control" id="fixedDepositAmtId"
			placeholder="Amount">
	</div>
	<div class="col-md-2">
		<label class="form-label" for="savingDeposit">Saving Deposit</label>
		<input type="text" name="savingDeposit" class="form-control" id="savingDepositPerId"
			placeholder="Percentage">
		<span class="or">OR</span>
		<input type="text" name="savingDeposit" class="form-control" id="savingDepositAmttId"
			placeholder="Amount">
	</div>	
	<div class="col-md-2">
		<label class="form-label" for="share">Share</label>
		<input type="text" name="share" class="form-control" id="sharePerId"
			placeholder="Percentage">
		<span class="or">OR</span>
		<input type="text" name="share" class="form-control" id="shareAmttId"
			placeholder="Amount">
	</div>
	<div class="col-md-2">
		<label class="form-label" for="buildingFund">Building Fund</label>
		<input type="text" name="buildingFund" class="form-control" id="buildingFundPerId"
			placeholder="Percentage">
		<span class="or">OR</span>
		<input type="text" name="buildingFund" class="form-control" id="buildingFundAmttId"
			placeholder="Amount">
	</div>
	<div class="col-md-2">
		<label class="form-label" for="serviceCharge">Service Charge</label>
		<input type="text" name="serviceCharge" class="form-control" id="serviceChargePerId"
			placeholder="Percentage">
		<span class="or">OR</span>
		<input type="text" name="serviceCharge" class="form-control" id="serviceChargeAmttId"
			placeholder="Amount">
	</div>
	<div class="col-md-2">
		<label class="form-label" for="miscCharge">Misc Charge</label>
		<input type="text" name="miscCharge" class="form-control" id="miscChargePerId"
			placeholder="Percentage">
		<span class="or">OR</span>
		<input type="text" name="miscCharge" class="form-control" id="miscChargeAmttId"
			placeholder="Amount">
	</div>
</fieldset>
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
$('#applyLoanRuleDateId').datetimepicker({
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
});
</script>