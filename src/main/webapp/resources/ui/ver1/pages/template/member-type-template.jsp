<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="box-body">
	<div class="form-group col-md-4">
		<label class="form-label" for="memberTypeId">Member Type</label>
		<form:select name="memberType"
			class="form-control " id="memberTypeId"
			path="memberType">
			<form:option value="">--Select Member Type--</form:option>
			<form:options items="${memberTypeList}" />
		</form:select>
	</div>		
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="sharesAmountId">Share Amount</label>
		<form:input type="text" name="sharesAmount" class="form-control width-3"
			id="sharesAmountId" placeholder="Shares Amount" path="sharesAmount" />
	</div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="memberFeeId">Member Fee</label>
		<form:input type="text" name="memberFee" class="form-control width-3"
			id="memberFeeId" placeholder="memberFee" path="memberFee" />
	</div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="miscellaneousChargeId">Miscellaneous Charge</label>
		<form:input type="text" name="miscellaneousCharge" class="form-control width-3"
			id="miscellaneousChargeId" placeholder="miscellaneousCharge" path="miscellaneousCharge" />
	</div>	
	<div class="clearfix"></div>	

	<div class="form-group col-md-4">
		<label class="form-label" for="participateInElectionId">Can Participate In Election?</label>
		<div class="checkbox margin-none">
			<label> <form:checkbox name="participateInElection"
					id="participateInElectionId" path="participateInElection" /> Yes
			</label>
		</div>
	</div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="eligibleForVotingId">Is eligible for Voting?</label>
		<div class="checkbox margin-none">
			<label> <form:checkbox name="eligibleForVoting"
					id="eligibleForVotingId" path="eligibleForVoting" /> Yes
			</label>
		</div>
	</div>	
	<div class="form-group col-md-4">
		<label class="form-label" for="eligibleForLoanId">Is eligible For Loan?</label>
		<div class="checkbox margin-none">
			<label> <form:checkbox name="eligibleForLoan"
					id="eligibleForLoanId" path="eligibleForLoan" /> Yes
			</label>
		</div>
	</div>	
	<div class="clearfix"></div>
	<div class="form-group col-md-4">
		<label class="form-label" for="eligibleforGuarantorId">Is eligible for Guarantor?</label>
		<div class="checkbox margin-none">
			<label> <form:checkbox name="eligibleforGuarantor"
					id="eligibleforGuarantorId" path="eligibleforGuarantor" /> Yes
			</label>
		</div>
	</div>		
	<div class="clearfix"></div>		
</div>
<!-- /.box-body -->	