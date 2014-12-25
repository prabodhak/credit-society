<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div id="body">	
	<aside class="right-side">
		<!-- Main content -->
 		<section class="content" style="padding-top:0px;">
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
								<div class="form-group col-md-3">
									<label class="form-label" for="accountTypeAdd">Account Type</label>
									<select name="accountTypeAdd" class="form-control" id="accountTypeAddId">
										<option value="1">Select Account Type</option>
										<option value="2">Loan</option>
										<option value="3">Deposit</option>
									</select>
								</div>
								<div class="clearfix"></div>
								<div id="depositAccountTypeBodyId" style="display:none;">
									<jsp:directive.include file="../template/deposit-account-type-add-template.jsp" />
								</div>
								<div id="loanAccountTypeBodyId" style="display:none;">
									<jsp:directive.include file="../template/loan-account-type-add-template.jsp" />
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- /.box-body -->
						</form>
					</div>
					<!-- /.box -->
				</div>
				<!--/.col (left) -->
			</div>
			<!-- /.row -->
		</section>
	</aside>
</div>
