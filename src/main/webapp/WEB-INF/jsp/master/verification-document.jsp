<div id="crudMenuId">
	<jsp:directive.include file="../common/crud-menu.jsp" />
</div>
<div id="mainContentId">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<!-- DATA TABLES -->
	<link href="resources/css/datatables/dataTables.bootstrap.css"
		rel="stylesheet" type="text/css" />
		
	<!-- Right side column. Contains the navbar and content of the page -->
	<aside class="right-side">
		<!-- Main content -->
		<section class="content" style="padding-top:0px;">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box box-solid box-primary">
						<div class="box-header">
							<h3 class="box-title">Add Verification Documents</h3>
							<div class="box-tools pull-right">
								<button class="btn btn-primary btn-sm" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form:form role="form" modelAttribute="document" action="master/verification-document/add" method="post">
							<div class="box-body">
								<div class="clearfix"></div>
								<div class="form-group col-md-3">
									<label class="form-label" for="documentNameId">Document Name</label> <form:input
										type="text" name="documentName" class="form-control" id="documentNameId"
										placeholder="Document Name" path="name"/>
								</div>
								<div class="form-group col-md-3">
									<label class="form-label" for="documentDescriptionId">Document Description</label>
									<form:input	type="text" name="documentDescription" class="form-control" id="documentDescriptionId" placeholder="Document Description" path="documentDescription"/>
								</div>							
								<div class="form-group col-md-3">
									<label class="form-label" for="docProofTypeId">Document Type</label>
									<form:select name="docProofType" class="form-control" id="docProofTypeId" path="documentType">
										<form:options items="${types}"/>
									</form:select>
								</div>
								<div class="form-group col-md-3 add-verification-docs">
									<button name="verificationDocBut" class="btn btn-success add-verification-docs-but"><spring:message code="button$add"/></button>
								</div>
								<div class="clearfix"></div>
							</div>
						</form:form>
					</div>
					<!-- /.box -->
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Verification Documents List</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body table-responsive">
							<table id="verificationDocListId" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th style="width:25%;">Document Name</th>
										<th style="width:35%;">Document Description</th>
										<th style="width:25%">Type of Document</th>
										<th style="width:15%;">Status</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="document" items="${documents}">
	                                            <tr>
	                                                <td>${document.name}</td>
	                                                <td>${document.documentDescription}</td>
	                                                <td>${document.documentType}</td>
	                                                	<c:choose>
											                <c:when test="${document.active == true}">
											                    <td>Active</td>
											                </c:when>
											                <c:otherwise>
											                    <td>Inactive</td>
											                </c:otherwise>
											            </c:choose>
	                                            </tr>
	                                            </c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
	
				</div>
				<!--/.col (left) -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
	</aside>
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
</div>