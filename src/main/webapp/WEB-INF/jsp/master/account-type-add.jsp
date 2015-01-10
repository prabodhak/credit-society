<div id="mainContentId">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
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
						<form:form role="form" action="" method="get" modelAttribute="accountType">
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
								<div id="accountTypeAddBodyId"></div>
								<%-- <div id="depositAccountTypeBodyId" style="display:none;">
									<jsp:directive.include file="../template/deposit-account-type-add-template.jsp" />
								</div>
								<div id="loanAccountTypeBodyId" style="display:none;">
									<jsp:directive.include file="../template/loan-account-type-add-template.jsp" />
								</div> --%>
								<div class="clearfix"></div>
							</div>
							<!-- /.box-body -->
						</form:form>
					</div>
					<!-- /.box -->
				</div>
				<!--/.col (left) -->
			</div>
			<!-- /.row -->
		</section>
	</aside>
	<script>
	$(document).on('change', '#accountTypeAddId', function(){
		//alert($( "select option:selected" ).text());
		//alert($(this).find(":selected").text());
	/* 	if($(this).find(":selected").text() == "Loan"){
			$("#loanAccountTypeBodyId").css("display", "block");
			$("#depositAccountTypeBodyId").css("display", "none");
			//$("#accountTypeCreateButId").removeAttr('disabled');
		}else if($(this).find(":selected").text() == "Deposit"){
			$("#depositAccountTypeBodyId").css("display", "block");
			$("#loanAccountTypeBodyId").css("display", "none");
			//$("#accountTypeCreateButId").removeAttr('disabled');
		}else{
			$("#depositAccountTypeBodyId").css("display", "none");
			$("#loanAccountTypeBodyId").css("display", "none");
			//$("#accountTypeCreateButId").attr('disabled', 'disabled');
		} */
		
		var accountType =  $(this).find(":selected").text();
		//alert(accountType);
		$.ajax({
			url: "master/account-type/addAjax",
			dataType: "html",
			data:	{	"accountType" : accountType},
			type:	"get",
			success: function(response) {
				//alert(response);
				//var ajaxResponse = $($.parseHTML(response)).filter("#ajaxResponseId");
				//alert($(response).find('#ajaxResponseId').html());
				//alert($(response).filter('#ajaxResponseId').html());
				//var head = $(response).find('body').html();
				//alert(head);
				//alert($("head").html());
				//$("head").html($("head").html());
	
				//alert($('html').find("#footerCommonScriptId").html());
				//$("#footerCommonScriptId").html($("#footerCommonScriptId").html());
	
				var ajaxResponse = $(response).find('#ajaxResponseId').html();
				$('#accountTypeAddBodyId').html(ajaxResponse);
				$('html').find("script").each(function(i) {
					//alert($(this).text());
					//alert($(this).attr('src'));
					//js = $(this).attr('src');
					//$.getScript(js, function() {
						  //alert('Load was performed.');
					//	});
	                //eval($(this).text());
	            });
				
				console.log("Success");
			},
			error: function(xhr) {
				console.log("Error");
			}
		});
	});
	</script>
</div>