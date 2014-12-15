<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!-- Right side column. Contains the navbar and content of the page -->
<div id="body">
	<aside class="right-side">
		<section class="content menu-tool-bar">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box box-primary">
						<div class="box-header" style="padding:2px;">
							<a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> Add
							</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> Edit
							</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> View
							</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i>
								Delete
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Account Opening Form -->
		<section class="content">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<div class="box box-solid box-primary">
						<div class="box-header">
							<h3 class="box-title">Account Opening Form</h3>
							<div class="box-tools pull-right">
								<button class="btn btn-primary btn-sm" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form:form role="form" modelAttribute="member" name="memberAccount" id="memberAccountId"
							method="POST" action="#">
							<div class="box-body">
								<div class="form-group col-md-4">
									<label class="form-label" for="customerIdId">Customer Id</label>
									<input type="text" name="customerId"
										class="form-control width-3" id="customerIdId"
										placeholder="Customer Id">
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="existingAccountId">Existing
										Account</label> <select name="existingAccount"
										class="form-control width-3" id="existingAccountId">
										<option value="1">Saving Account</option>
										<option value="2">Dhan Laxmi Yojna</option>
										<option value="3">Fixed Deposite With Saving Account</option>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label class="form-label" for="newAccountId">New Account</label>
									<select name="newAccount" class="form-control width-3"
										id="newAccountId">
										<option value="">--Select Account Type--</option>
										<option value="4">Current Account</option>
										<option value="2">Ladli Yojna</option>
										<option value="3">Higher Education Yojna</option>
										<option value="4">Daily Bchat Yojna</option>
									</select>
								</div>
								<div class="clearfix"></div>
								<hr>
								<div class="form-group col-md-3">
									<label class="form-label" for="customerNameId">Customer
										Name</label> <input type="text" name="customerName"
										class="form-control width-4" id="customerNameId"
										placeholder="Customer Name">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="customerTypeId">Customer
										Type</label> <input type="text" name="customerType"
										class="form-control width-4" id="customerTypeId"
										placeholder="Customer Type">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="branchCodeId">Branch Code</label>
									<input type="text" name="branchCode"
										class="form-control width-4" id="branchCodeId"
										placeholder="Branch Code">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="bodId">Begin of Day</label> <input
										type="text" name="bod" class="form-control width-4" id="bodId"
										placeholder="Begin of Day">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="emailId">E-Mail</label> <input
										type="text" name="email" class="form-control width-4"
										id="emailId" placeholder="E-mail">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="mobId">Mobile No</label> <input
										type="text" name="mob" class="form-control width-4" id="mobId"
										placeholder="Mobile No">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="PANCardId">PAN Card No</label> <input
										type="text" name="PANCard" class="form-control width-4"
										id="PANCardId" placeholder="PAN Card No">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="uidId">UID No</label> <input
										type="text" name="uid" class="form-control width-4" id="uidId"
										placeholder="UID No">
								</div>
								<div class="clearfix"></div>
								<hr>
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
									<label class="form-label" for="openingDateId">Opening
										Date</label> <input type="text" name="openingDate"
										class="form-control width-4" id="openingDateId"
										placeholder="Opening Date">
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
								<jsp:directive.include file="../template/nominee-template.jsp" />
								<div class="clearfix"></div>
								<jsp:directive.include file="../template/guardian-template.jsp" />
								<div class="clearfix"></div>
							</div>
							<!-- /.box-body -->
							<div class="box-footer next-btn">
								<button type="submit" name="accountOpeningNext"
									class="btn btn-primary" id="accountOpeningNextId">Next</button>
							</div>
							<div class="clearfix"></div>
						</form:form>
					</div>
					<!-- /.box -->
				</div>
			</div>
		</section>
	</aside>
	<!-- nominee form -->
	<%-- <jsp:directive.include file="nominee.jsp" /> --%>
	<!-- guardian form -->
	<%-- <jsp:directive.include file="guardian.jsp" /> --%>
	<!-- introducer form -->
	<%-- <jsp:directive.include file="introducer.jsp" /> --%>
</div>
<script>
var currentBoxNumber = 0;
$(".username").keyup(function (event) {
    if (event.keyCode == 13) {
        textboxes = $("input.username");
        currentBoxNumber = textboxes.index(this);
        console.log(textboxes.index(this));
        if (textboxes[currentBoxNumber + 1] != null) {
            nextBox = textboxes[currentBoxNumber + 1];
            nextBox.focus();
            nextBox.select();
            event.preventDefault();
            return false;
        }
    }
});
</script>