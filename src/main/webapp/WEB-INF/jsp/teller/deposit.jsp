<div id="crudMenuId"></div>
<div id="mainContentId">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
	<!-- Right side column. Contains the navbar and content of the page -->
	<aside class="right-side">
		<!-- Account Opening Form -->
		<section class="content">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<div class="box box-solid box-primary">
						<div class="box-header">
							<h3 class="box-title">Deposit Form</h3>
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
								<div class="form-group col-md-3">
									<label class="form-label" for="accountNumIdId">Account Number</label>
									<input type="text" name="accountNumId"
										class="form-control" id="accountNumIdId"
										placeholder="Account Number">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="transactionIdId">Transaction Id</label>
									<input type="text" name="transactionId" class="form-control" id="transactionIdId"
										placeholder="Transaction Id">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="transactioDateId">Transaction Date</label>
									<input type="text" name="transactioDate" class="form-control" id="transactioDateId"
										placeholder="Transaction Date" data-date-format="dd MM yyyy" readonly="true"/>
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="branchCodeId">Branch Code</label>
									<input type="text" name="branchCode" class="form-control" id="branchCodeId"
										placeholder="Branch Code" readonly="true"/>
								</div>
								<div class="clearfix"></div>
								<hr>
								<div class="form-group col-md-3">
									<label class="form-label" for="customerIdId">Customer
										Id</label> <input type="text" name="customerId"
										class="form-control width-4" id="customerIdId"
										placeholder="Customer Id">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="customerNameId">Customer
										Name</label> <input type="text" name="customerName"
										class="form-control width-4" id="customerNameId"
										placeholder="Customer Name">
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
								<div class="clearfix"></div>
								<hr>
								<div class="form-group col-md-3">
									<label class="form-label" for="amountId">Amount</label>
									<input type="text" name="amount"
										class="form-control width-4" id="amountId"
										placeholder="Amount">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="currencyTypeId">Currency Type</label>
									<input type="text" name="currencyType"
										class="form-control width-4" id="currencyTypeId"
										placeholder="Currency Type">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="depositTypeId">Deposit Type</label>
									<select name="depositType"
										class="form-control" id="depositTypeId">
										<option value="1">Cash</option>
										<option value="2">Demand Draft</option>
										<option value="3">Demand Draft</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="chequeDDNoId">Cheque/Demand Draft No</label>
									<input type="text" name="chequeDDNo"
										class="form-control width-4" id="chequeDDNoId"
										placeholder="Cheque/Demand Draft No">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="depositorId">Depositor Name</label>
									<input type="text" name="depositor"
										class="form-control width-4" id="depositorId"
										placeholder="Depositor Name">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="instructionTypeId">Instruction Type</label>
									<input type="text" name="instructionType"
										class="form-control width-4" id="instructionTypeId"
										placeholder="Instruction Type">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="instructionNoId">Instruction No</label>
									<input type="text" name="instructionNo"
										class="form-control width-4" id="instructionNoId"
										placeholder="Instruction No">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="instructionDateId">Instruction Date</label>
									<input type="text" name="instructionDate" class="form-control" id="instructionDateId"
										placeholder="Instruction Date" data-date-format="dd MM yyyy" readonly="true"/>
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="valueDateId">Value Date</label>
									<input type="text" name="valueDate" class="form-control" id="valueDateId"
										placeholder="Value Date" data-date-format="dd MM yyyy" readonly="true"/>
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="remarkId">Remark</label>
									<input type="text" name="remark"
										class="form-control width-4" id="remarkId"
										placeholder="Remark">
								</div>
								<div class="clearfix"></div>
								<hr>
								<div class="form-group col-md-3">
									<label class="form-label" for="accountStatusId">Aaccount Status</label>
									<input type="text" name="accountStatus"
										class="form-control width-4" id="accountStatusId"
										placeholder="Account Status">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="customerTypeId">Customer
										Type</label> <input type="text" name="customerType"
										class="form-control width-4" id="customerTypeId"
										placeholder="Customer Type">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="modeOfOperationId">Mode Of Operation</label>
									<input type="text" name="modeOfOperationId"
										class="form-control width-4" id="modeOfOperationId"
										placeholder="Mode Of Operation">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="accountTypeId">Account Type</label>
									<input type="text" name="accountType"
										class="form-control width-4" id="accountTypeId"
										placeholder="Account Type">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="accountBalanceId">Account Balance</label>
									<input type="text" name="accountBalance"
										class="form-control width-4" id="accountBalanceId"
										placeholder="Account Balance">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="shadowBalanceId">Shadow Balance</label>
									<input type="text" name="shadowBalance"
										class="form-control width-4" id="shadowBalanceId"
										placeholder="Shadow Balance">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="availBalanceId">Available Balance</label>
									<input type="text" name="availBalance"
										class="form-control width-4" id="availBalanceId"
										placeholder="Available Balance">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="effectiveAvailBalanceId">Effective Available Balance</label>
									<input type="text" name="effectiveAvailBalance"
										class="form-control width-4" id="effectiveAvailBalanceId"
										placeholder="Effective Available Balance">
								</div>
							</div>
							<div class="clearfix"></div>
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

	<link href="resources/css/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
	<script type="text/javascript" src="resources/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
	
	<script>
	//datetimepicker
	$('#applicationDateId').datetimepicker({
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