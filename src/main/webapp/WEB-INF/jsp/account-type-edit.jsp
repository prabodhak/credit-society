<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-solid box-primary">
				<div class="box-header">
					<h3 class="box-title">Account Type Creation</h3>
					<div class="box-tools pull-right">
						<button class="btn btn-primary btn-sm" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form role="form" action="account-type-creation.html" method="get">
					<div class="box-body">
						<div class="form-group col-md-4">
							<label class="form-label" for="accountType">Account Type</label>
							<select class="form-control width-3" id="accountType">
								<option>Select Account Type</option>
								<option>Loan</option>
								<option>Deposite</option>
							</select>
						</div>
						<div class="form-group col-md-4">
							<label class="form-label" for="accountName">Account Name</label>
							<input type="text" class="form-control width-3" id="accountName"
								placeholder="Account Name">
						</div>
						<div class="clearfix"></div>
						<div class="form-group col-md-4">
							<label class="form-label" for="minimumBalance">Minimum
								Balance</label> <input type="text" class="form-control width-3"
								id="minimumBalance" placeholder="Minimum Balance">
						</div>
						<div class="form-group col-md-4">
							<label class="form-label" for="interestRate">Interest
								Rate</label> <input type="text" class="form-control width-3"
								id="interestRate" placeholder="Interest Rate">
						</div>
						<div class="form-group col-md-4">
							<label class="form-label" for="interestCalculationMode">Interest
								Calculation Mode</label> <select class="form-control width-3"
								id="interestCalculationMode">
								<option>Select Interest Calculation Mode</option>
								<option>Daily</option>
								<option>Weekly</option>
								<option>Mothly</option>
								<option>Quartly</option>
								<option>Half Yearly</option>
								<option>Yearly</option>
							</select>
						</div>
						<div class="clearfix"></div>
						<hr>
						<div class="form-group col-md-4">
							<label class="form-label" for="">Required Items</label>
							<div class="checkbox">
								<label> <input type="checkbox" id="guaranterRequired">
									Guaranter Required
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" id="panCardRequired">
									PAN Card Required
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" id="idetityRequired">
									Identity Proof Required
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" id="addressRequired">
									Address Proof Required
								</label>
							</div>
						</div>
						<div class="form-group col-md-4">
							<label class="form-label" for="">Identity Proof Documents</label>
							<div class="checkbox">
								<label> <input type="checkbox"> Voter Id Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Driving Liscence
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> PAN Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Adhar Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Student Isentity
									Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Govt Office
									Issued Identity Card
								</label>
							</div>
						</div>
						<div class="form-group col-md-4">
							<label class="form-label" for="">Address Proof Documents</label>
							<div class="checkbox">
								<label> <input type="checkbox"> Voter Id Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Driving Liscence
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> PAN Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Adhar Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Student Isentity
									Card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"> Govt Office
									Issued Identity Card
								</label>
							</div>
						</div>

						<div class="clearfix"></div>
					</div>
					<!-- /.box-body -->
					<div class="clearfix"></div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Create</button>
					</div>
				</form>
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>