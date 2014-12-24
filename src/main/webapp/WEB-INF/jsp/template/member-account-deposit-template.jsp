<div class="form-group col-md-3">
	<label class="form-label" for="masterAccountTypeId">Master
		Account Type</label> <input type="text" name="masterAccountType"
		class="form-control width-4" id="masterAccountTypeId"
		placeholder="Master Account Type">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="accountTypeId">Account
		Type</label> <input type="text" name="accountType"
		class="form-control width-4" id="accountTypeId"
		placeholder="Account Type">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="nameOnPassbookId">Name
		(As Appear on Passbook)</label> <input type="text"
		name="nameOnPassbook" class="form-control width-4"
		id="nameOnPassbookId" placeholder="Name On Passbook">
</div>
<div class="clearfix"></div>
<div class="form-group col-md-3">
	<label class="form-label" for="minimumBalanceId">Minimum
		Balance</label> <input type="text" name="minimumBalance"
		class="form-control width-4" id="minimumBalanceId"
		placeholder="Minimum Balance">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="interestRateId">Interest
		Rate</label> <input type="text" name="interestRate"
		class="form-control width-4" id="interestRateId"
		placeholder="Interest Rate">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="interestCalculationModeId">Interest
		Calculation Mode</label> <select class="form-control width-4"
		name="interestCalculationMode" id="interestCalculationModeId">
		<option value="">Select Interest Calculation Mode</option>
		<option value="1">Daily</option>
		<option value="2">Weekly</option>
		<option value="3">Mothly</option>
		<option value="4">Quartly</option>
		<option value="5">Half Yearly</option>
		<option value="6">Yearly</option>
	</select>
</div>
<div class="clearfix"></div>
<div class="form-group col-md-3">
	<label class="form-label" for="debitCashLimitId">Debit
		Cash Limit</label> <input type="text" name="debitCashLimit"
		class="form-control width-4" id="debitCashLimitId"
		placeholder="Debit Cash Limit">
</div>
<div class="form-group col-md-3">
	<label class="form-label" for="creditCashLimitId">Credit
		Cash Limit</label> <input type="text" name="creditCashLimit"
		class="form-control width-4" id="creditCashLimitId"
		placeholder="Credit Cash Limit">
</div>
<div class="clearfix"></div>
<div class="form-group col-md-3">
	<label class="form-label" for="modeOfOpId">Mode of
		Operation</label>
	<div class="checkbox margin-none">
		<label> <input type="checkbox" name="modeOfOpSelf"
			id="modeOfOpSelfId"> Self
		</label> <label style="margin-left: 15px;"> <input
			type="checkbox" name="modeOfOpSelfSur" id="modeOfOpSelfSurId"
			style="margin-left: 10px;"> Self or Survival
		</label>
	</div>
</div>
<div class="form-group col-md-9">
	<label class="form-label" for="nomineeReqId">Nominee
		Required</label>
	<div class="checkbox margin-none">
		<label> <input type="checkbox" name="nomineeReqYes"
			id="nomineeReqYesId"> Yes
		</label> <label style="margin-left: 15px;"> <input
			type="checkbox" name="nomineeReqNo" id="nomineeNoId"
			style="margin-left: 10px;"> No
		</label>
	</div>
</div>

<div class="form-group col-md-3">
	<label class="form-label" for="eStatementId">E Statement
		Required</label>
	<div class="checkbox margin-none">
		<label> <input type="checkbox" name="eStatementYes"
			id="eStatementYesId"> Yes
		</label> <label style="margin-left: 15px;"> <input
			type="checkbox" name="eStatementNo" id="eStatementNoId"
			style="margin-left: 10px;"> No
		</label>
	</div>
</div>
<div class="form-group col-md-9">
	<label class="form-label" for="statementFreqId">Statement
		Frequency</label>
	<div class="checkbox margin-none">
		<label> <input type="checkbox" name="statementFreqMon"
			id="statementFreqMonId"> Monthly
		</label> <label style="margin-left: 15px;"> <input
			type="checkbox" name="statementFreqQua"
			id="statementFreqQuaId" style="margin-left: 10px;">
			Quaterly
		</label> <label> <input type="checkbox"
			name="statementFreqHYrly" id="statementFreqHYrlyId"
			style="margin-left: 10px;"> Half Yearly
		</label> <label style="margin-left: 15px;"> <input
			type="checkbox" name="statementFreqYrly"
			id="statementFreqYrlyId" style="margin-left: 10px;">
			Yearly
		</label>
	</div>
</div>
<div class="clearfix"></div>
<!-- Upload Introducer Photo & Signature -->
<div class="form-group col-md-3">
    <label class="form-label" for="introducerPhototId">Upload Photo</label>
    <input type="file" name="introducerPhotot" id="introducerPhototId">
    <br/>
    <label class="form-label" for="introducerSignatureImageId">Upload Signature</label>
    <input type="file" name="introducerSignatureImage" id="introducerSignatureImageId">	
</div>
<div class="form-group col-md-3">
    <label class="form-label" for="introducerPhototPreviewId">Photo Preview</label>
    <div>
        <img name="introducerPhototPreview" id="introducerPhototPreviewId" style="width: 70%; height: 120px;" src="http://www.html.am/images/image-codes/milford_sound_t.jpg" alt="Photo of Introducer"/>
     </div>	
</div>                                        
<div class="form-group col-md-3">
    <label class="form-label" for="introducerSignaturePreviewId">Signature Preview</label>
    <div>
        <img name="introducerSignaturePreview" class="width-3" id="introducerSignaturePreviewId" style="height: 60px;" src="http://www.html.am/images/image-codes/milford_sound_t.jpg" alt="Signature of Introducer" />
    </div>
</div> 
<div class="clearfix"></div>
<h2>Nominee</h2>
<jsp:directive.include file="../template/nominee-template.jsp" />
<div class="clearfix"></div>
<h2>Guardian</h2>
<jsp:directive.include file="../template/guardian-template.jsp" />
<div class="clearfix"></div>
