<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page pageEncoding="utf-8" %>

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
	<!--Nominee Form-->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Nominee Details</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-primary btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- include nominee template -->
					<form:form role="form" modelAttribute="member"
						name="personalDetail1" id="personalDetail1Id" method="POST"
						action="member/member-info/add">
						<jsp:directive.include file="../template/nominee-template.jsp" />
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
	<!--Nomineee Form End-->	
</aside>	