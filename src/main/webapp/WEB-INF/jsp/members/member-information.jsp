<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<section class="content" style="padding-bottom:0px;">
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
						<jsp:directive.include file="../template/member-template.jsp" />
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
<!-- /.right-side -->
<!-- /.right-side -->
<script type="text/javascript">
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
				dob : {
					required : true
				},
				gender : {
					required : true
				},
				nationality : {
					required : true
				},
				email : {
					email : true
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
	});
</script>