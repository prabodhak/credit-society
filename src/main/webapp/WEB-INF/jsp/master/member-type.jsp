<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- DATA TABLES -->
<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />

<!-- Right side column. Contains the navbar and content of the page -->
<div id="main-content">
	<aside class="right-side">
		<section class="content" style="padding-bottom:0px;">
			<div class="row" align="left">
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
		<!-- Main content -->
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box box-solid box-primary">
						<div class="box-header">
							<h3 class="box-title">Add Member Type</h3>
							<div class="box-tools pull-right">
								<button class="btn btn-primary btn-sm" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form:form role="form" modelAttribute="memberType" action="master/member-type/add" method="post">
							<div class="box-body">
								<div class="form-group col-md-4">
									<label class="form-label" for="memberTypeId">Member Type</label>
									<form:input type="text" name="memberType" class="form-control width-3"
										id="memberTypeId" placeholder="Member Type" path="type" />
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
								<div class="form-group col-md-3 add-verification-docs">
									<button type="submit" name="memberTypeButton" class="btn btn-success add-verification-docs-but">Add</button>
								</div>		
								<div class="clearfix"></div>		
							</div>
							<!-- /.box-body -->	
						</form:form>
					</div>
					<!-- /.box -->
					
					<!-- /.box -->
	
				</div>
				<!--/.col (left) -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
	</aside>
</div>
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
</script>