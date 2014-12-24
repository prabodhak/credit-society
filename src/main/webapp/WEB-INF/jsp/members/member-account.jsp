<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!-- Right side column. Contains the navbar and content of the page -->
<div id="body">
	<aside class="right-side">
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
								<div class="form-group col-md-3">
									<label class="form-label" for="customerIdId">Customer Id</label>
									<input type="text" name="customerId"
										class="form-control" id="customerIdId"
										placeholder="Customer Id">
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="existingAccountId">Existing
										Account</label> <select name="existingAccount"
										class="form-control" id="existingAccountId">
										<option value="1">Saving Account</option>
										<option value="2">Dhan Laxmi Yojna</option>
										<option value="3">Fixed Deposite With Saving Account</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="newAccountId">New Account</label>
									<select name="newAccount" class="form-control"
										id="newAccountId">
										<option value="">--Select Account Type--</option>
										<option value="4">Current Account</option>
										<option value="2">Ladli Yojna</option>
										<option value="3">Higher Education Yojna</option>
										<option value="4">Daily Bchat Yojna</option>
									</select>
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="applicationDateId">Application Date</label>
									<input type="text" name="applicationDate" class="form-control" id="applicationDateId"
										placeholder="Application Date" data-date-format="dd MM yyyy" readonly="true"/>
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
								<%-- <div id="memberAccountTypeBodyId" style="display:block;">
									<jsp:directive.include file="../template/member-account-deposit-template.jsp" />
								</div> --%>
								<div id="memberAccountTypeBodyId">
									<jsp:directive.include file="../template/member-account-loan-template.jsp" />
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
	<!-- nominee form -->
	<%-- <jsp:directive.include file="nominee.jsp" /> --%>
	<!-- guardian form -->
	<%-- <jsp:directive.include file="guardian.jsp" /> --%>
	<!-- introducer form -->
	<%-- <jsp:directive.include file="introducer.jsp" /> --%>
</div>

<link href="resources/css/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
<script type="text/javascript" src="resources/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>

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