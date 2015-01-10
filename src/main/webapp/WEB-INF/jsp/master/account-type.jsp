<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<div id="mainContent">	
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
						</form>
					</div>
					<!-- /.box -->
				</div>
				<!--/.col (left) -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
		<h4>Edit Form</h4>
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
									<label class="form-label" for="accountTypeEdit">Account Type</label>
									<select name="accountTypeEdit" class="form-control" id="accountTypeEditId">
										<option value="1">Select Account Type</option>
										<option value="2">Loan</option>
										<option value="3">Deposit</option>
									</select>
								</div>
								<div class="clearfix"></div>
								<div id="depositAccountTypeEditBodyId" style="display:none;">
									<jsp:directive.include file="../template/account-type-add-deposit-template.jsp" />
								</div>
								<div id="loanAccountTypeEditBodyId" style="display:none;">
									<jsp:directive.include file="../template/account-type-add-loan-template.jsp" />
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
		<!-- /.content -->
		<div class="clearfix"></div>
		<!--View Account Type-->
		<h4>View Account Type</h4>
		<section class="content">
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
							<jsp:directive.include file="../template/account-type-view-deposit-template.jsp" />
						</div>						
					
					</div>
				</div>
			</div>
		</section>		
	</aside>

<!-- /.right-side -->
</div>
<link href="resources/css/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
<script type="text/javascript" src="resources/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>

<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<script type="text/javascript">
    $(function() {
        $("#accountTypeListId").dataTable();
        $('#example2').dataTable({
            "bPaginate": true,
            "bLengthChange": false,
            "bFilter": false,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false
        });
    });
    
    // Add event listener for opening and closing details
	$('#accountTypeListViewId tbody').on('click', 'td.details-control', function () {
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
	
    $('#accountTypeListDeleteId').addClass('active');
    //alert($('#accountTypeAddId').attr('class'));
    
    $('#crudMenuDeleteId').addClass('active');
</script> 
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
	
	$.ajax({
		url: "master/account-type/add",
		dataType: "text",
		success: function(text) {
			alert(text);
			consol.log("Success");
			$('#accountTypeAddBodyId').html(text);
		},
		error: function(xhr) {
			consol.log("Error");
		}
	});
});

$(document).on('change', '#accountTypeEditId', function(){
	//alert($( "select option:selected" ).text());
	//alert($(this).find(":selected").text());
	if($(this).find(":selected").text() == "Loan"){
		$("#loanAccountTypeEditBodyId").css("display", "block");
		$("#depositAccountTypeEditBodyId").css("display", "none");
		//$("#accountTypeCreateButId").removeAttr('disabled');
	}else if($(this).find(":selected").text() == "Deposit"){
		$("#depositAccountTypeEditBodyId").css("display", "block");
		$("#loanAccountTypeEditBodyId").css("display", "none");
		//$("#accountTypeCreateButId").removeAttr('disabled');
	}else{
		$("#depositAccountTypeEditBodyId").css("display", "none");
		$("#loanAccountTypeEditBodyId").css("display", "none");
		//$("#accountTypeCreateButId").attr('disabled', 'disabled');
	}
	
});

$(document).on('change', '#accountTypeViewId', function(){
	//alert($( "select option:selected" ).text());
	//alert($(this).find(":selected").text());
	if($(this).find(":selected").text() == "Loan"){
		$("#loanAccountTypeViewBodyId").css("display", "block");
		$("#depositAccountTypeViewBodyId").css("display", "none");
		//$("#accountTypeCreateButId").removeAttr('disabled');
	}else if($(this).find(":selected").text() == "Deposit"){
		$("#depositAccountTypeViewBodyId").css("display", "block");
		$("#loanAccountTypeViewBodyId").css("display", "none");
		//$("#accountTypeCreateButId").removeAttr('disabled');
	}else{
		$("#depositAccountTypeViewBodyId").css("display", "none");
		$("#loanAccountTypeViewBodyId").css("display", "none");
		//$("#accountTypeCreateButId").attr('disabled', 'disabled');
	}
	
});

/*$(document).on('change', '#accountTypeAddId', function(){
	$.ajax({
		type: "GET",
	    url: 'resources/html/loan-account-template.html',
	})
	.done(function(data, textStatus, jqxhr){ 
		console.log( "Success" );
	})
	.fail(function(jqXHR, textStatus, errorThrown){ 
		console.log( "Error" );//alert("Error"); 
	})
	.always(function(jqXHROrData, textStatus, jqXHROrErrorThrown){
		console.log( "Always" );//alert("complete");
	});
});
*/
/*$("#accountTypeAddId").change(function(){
	
	alert("AA");
	$.ajax({
		type: "POST",
	    url: 'template/loan-account-template.jsp',
	})
	.done(function(data, textStatus, jqxhr){ 
		console.log( "Success" );
	})
	.fail(function(jqXHR, textStatus, errorThrown){ 
		console.log( "Error" );//alert("Error"); 
	})
	.always(function(jqXHROrData, textStatus, jqXHROrErrorThrown){
		console.log( "Always" );//alert("complete");
	});
});*/

	function loadAccountTypeEditForm() {
		alert("in");
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			alert(xmlhttp.readyState);
			alert(xmlhttp.status);
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				alert(xmlhttp.responseText);
				document.getElementById("accountTypeEdit").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "verification-document", true);
		xmlhttp.send();
	}
</script>