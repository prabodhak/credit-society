<table id="loanAccountTypeViewId" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th style="width:5%;"></th>
			<th style="width:35%;">Account Type</th>
			<th style="width:18%;">Member Type</th>
			<th style="width:12%">Max Loan</th>
			<th style="width:10%;">Interest</th>
			<th style="width:10%;">Penalty</th>
			<th style="width:10%;">Status</th>
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
				<div class="form-group col-md-2">
					<label class="form-label" for="numOfInstallment">Num of Installment</label>
					<input type="text" name="numOfInstallment" class="form-control" id="numOfInstallmentId"
						placeholder="Num of Installment">
				</div>
				<div class="form-group col-md-3">
					<label class="form-label" for="interestCalculationMode">Interest
						Calculation Mode</label> <input type="text" name="interestCalculationMode" class="form-control"
						id="interestCalculationModeId" placeholder="Interest Calculation Mode">
				</div>
				<div class="form-group col-md-3">
					<label class="form-label" for="penaltyCalculationMode">Penalty
						Calculation Mode</label> <input type="text" name="penaltyCalculationMode" class="form-control"
						id="penaltyCalculationModeId" placeholder="Penalty Calculation Mode">
				</div>
				<div class="form-group col-md-2">
					<label class="form-label" for="applyDepositRuleDate">Apply Date</label>
					<input type="text" name="applyDepositRuleDate" class="form-control" id="applyDepositRuleDateId"
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
				<div class="clearfix"></div>								
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
				<div class="form-group col-md-2">
					<label class="form-label" for="numOfInstallment">Num of Installment</label>
					<input type="text" name="numOfInstallment" class="form-control" id="numOfInstallmentId"
						placeholder="Num of Installment">
				</div>
				<div class="form-group col-md-3">
					<label class="form-label" for="interestCalculationMode">Interest
						Calculation Mode</label> <input type="text" name="interestCalculationMode" class="form-control"
						id="interestCalculationModeId" placeholder="Interest Calculation Mode">
				</div>
				<div class="form-group col-md-3">
					<label class="form-label" for="penaltyCalculationMode">Penalty
						Calculation Mode</label> <input type="text" name="penaltyCalculationMode" class="form-control"
						id="penaltyCalculationModeId" placeholder="Penalty Calculation Mode">
				</div>
				<div class="form-group col-md-2">
					<label class="form-label" for="applyDepositRuleDate">Apply Date</label>
					<input type="text" name="applyDepositRuleDate" class="form-control" id="applyDepositRuleDateId"
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
				<div class="clearfix"></div>
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
<script>
//Add event listener for opening and closing details
$('#loanAccountTypeViewId tbody').on('click', 'td.details-control', function () {
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
</script>