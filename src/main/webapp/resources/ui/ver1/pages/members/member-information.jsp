<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- Right side column. Contains the navbar and content of the page -->
<div id="main-content">
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
		<!-- Personal Details (1/2) -->
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<div class="box box-solid box-primary">
						<div class="box-header">
							<h3 class="box-title">Personal Details</h3>
							<div class="box-tools pull-right">
								<button class="btn btn-primary btn-sm" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form:form role="form" modelAttribute="member" name="personalDetail" id="personalDetailId"
							method="POST" action="member/member-info/add">
							<jsp:directive.include file="../template/member-info-template.jsp" />
							<div class="box-footer next-btn">
								<button type="submit" name="personalNextBtn"
									class="btn btn-primary" id="personalNextBtnId">Next</button>
							</div>
							<div class="clearfix"></div>						
						</form:form>
					</div>
					<!-- /.box -->
				</div>
			</div>
		</section>
	</aside>

	<!-- guardian form -->
	<jsp:directive.include file="guardian.jsp" />

</div>
	
<link href="resources/css/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
	
<script type="text/javascript">
// datetimepicker
$('#dobId').datetimepicker({
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
});
$(document).ready(function() {
	$("#personalDetailId").validate({
		errorElement : 'span',
		rules : {
			firstName : {
				required : true,
				minlength : 2
			},
			fatherHusbandName : {
				required : true
			},
			motherMaidenName : {
				required : true
			},
			maritalStatus : {
				required : true
			},
			// TODO - change name from creationDate to dob
			creationDate : {
				required : true
			},
			gender : {
				required : true
			},
			emailId : {
				required : true
			},
			mob1 : {
				required : true
			},
			locAddress1 : {
				required : true
			},
			locCity : {
				required : true
			},
			locDist : {
				required : true
			},
			locState : {
				required : true
			},
			locCountry : {
				required : true
			},
			locPin : {
				required : true,
				digits : true,
				minlength : 6,
				maxlength : 6
			},
			perAddress1 : {
				required : true
			},
			perCity : {
				required : true
			},
			perDist : {
				required : true
			},
			perState : {
				required : true
			},
			perCountry : {
				required : true
			},
			perPin : {
				required : true,
				digits : true,
				minlength : 6,
				maxlength : 6
			}
		},
		messages : {
			firstName : "Please enter your Last Name",
		},

		submitHandler : function(form) {
			form.submit();
		}
	});
	
	// Address Autofill (same as local)
	$('input[type="checkbox"][name="copyAddress"]').on('ifChecked', function(event){
		//alert(event.type + ' callback');
		$("#perAddress1Id").val($("#locAddress1Id").val());
		$("#perAddress2Id").val($("#locAddress2Id").val());
		$("#perLandmarkId").val($("#locLandmarkId").val());
		$("#perCityId").val($("#locCityId").val());
		$("#perDistId").val($("#locDistId").val());
		$("#perStateId").val($("#locStateId").val());
		$("#perCountryId").val($("#locCountryId").val());
		$("#perPinId").val($("#locPinId").val());
	});
	
	$('input[type="checkbox"][name="copyAddress"]').on('ifUnchecked', function(event){
		//alert(event.type + ' callback');
	  	$("#perAddress1Id").val("");
		$("#perAddress2Id").val("");
		$("#perLandmarkId").val("");
		$("#perCityId").val("");
		$("#perDistId").val("");
		$("#perStateId").val("");
		$("#perCountryId").val("");
		$("#perPinId").val("");
	});

	//Senior Citizen Validation
	$('input[type="checkbox"][name="seniorCitizen"]').on('ifChecked', function(event){
		//alert($('input[type="checkbox"][name="seniorCitizen"]').prop('id'));
		$('input[type="checkbox"][name="minor"]').prop('disabled', true);
	});
	$('input[type="checkbox"][name="seniorCitizen"]').on('ifUnchecked', function(event){
		//alert($('input[type="checkbox"][name="seniorCitizen"]').prop('id'));
		$('input[type="checkbox"][name="minor"]').prop('disabled', false);
	});
	//Minor Validation
	$('input[type="checkbox"][name="minor"]').on('ifChecked', function(event){
		//alert($('input[type="checkbox"][name="minor"]').prop('id'));
		$('input[type="checkbox"][name="seniorCitizen"]').prop('disabled', true);
	});
	$('input[type="checkbox"][name="minor"]').on('ifUnchecked', function(event){
		//alert($('input[type="checkbox"][name="minor"]').prop('id'));
		$('input[type="checkbox"][name="seniorCitizen"]').prop('disabled', false);
	});
	
	// calculate age based on enterd DOB
    $('#dobId').change(function(){
        var birthDate = new Date(this.value);
        var age = getAge(birthDate);
		$('#ageId').val(age);        
    });

	// calculate age based on enterd DOB
    function getAge(birthDate) {
        var today = new Date();
        var nowyear = today.getFullYear();
        var nowmonth = today.getMonth()+1;
        var nowday = today.getDate();
     
        var birthyear = birthDate.getFullYear();
        var birthmonth = birthDate.getMonth() +1;
        var birthday = birthDate.getDate();
     
        var age = nowyear - birthyear;
        var age_month = nowmonth - birthmonth;
        var age_day = nowday - birthday;
        
        if(age_month < 0 || (age_month == 0 && age_day <0)) {
                age = parseInt(age) -1;
            }
        
        return age;
    }
});
</script>