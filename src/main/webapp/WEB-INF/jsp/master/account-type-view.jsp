<div id="crudMenuId">
	<jsp:directive.include file="../common/crud-menu.jsp" />
</div>
<div id="mainContentId">
	<aside class="right-side">
		<!-- Main content -->
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<div class="col-md-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Account Type List</h3>
						</div>
						<div class="form-group col-md-3">
							<label class="form-label" for="accountTypeView">Account Type</label>
							<select name="accountTypeView" class="form-control" id="accountTypeViewId">
								<option value="1">Select Account Type</option>
								<option value="2">Loan</option>
								<option value="3">Deposit</option>
							</select>
						</div>
						<div class="clearfix"></div>
						<div id="loanAccountTypeViewBodyId" style="display:none;">
							<jsp:directive.include file="../template/account-type-view-loan-template.jsp" />
						</div>
						<div id="depositAccountTypeViewBodyId" style="display:none;">
							<jsp:directive.include file="../template/account-type-view-loan-template.jsp" />
						</div>						
					
					</div>
				</div>
			</div>
		</section>	
	</aside>
	
	<script>
	$(document).on('change', '#accountTypeId', function(){
		//alert($( "select option:selected" ).text());
		//alert($(this).find(":selected").text());
		if($(this).find(":selected").text() == "Loan"){
			$("#loanAccountTypeViewBodyId").css("display", "block");
			$("#depositAccountTypeViewBodyId").css("display", "none");
			//$("#accountTypeCreateButId").removeAttr('disabled');
		}else if($(this).find(":selected").text() == "Deposite"){
			$("#depositAccountTypeViewBodyId").css("display", "block");
			$("#loanAccountTypeViewBodyId").css("display", "none");
			//$("#accountTypeCreateButId").removeAttr('disabled');
		}else{
			$("#depositAccountTypeViewBodyId").css("display", "none");
			$("#loanAccountTypeViewBodyId").css("display", "none");
			//$("#accountTypeCreateButId").attr('disabled', 'disabled');
		}
	});
	
	// Add event listener for opening and closing details
	$('#loanAccountTypeViewBodyId tbody').on('click', 'td.details-control', function () {
		var tr = $(this).closest('tr');
		if( tr.hasClass('shown') )
		{
			tr.removeClass('shown');
		}
		else
		{
			tr.addClass('shown');
		}
	} );
	</script>
</div>