<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!-- DATA TABLES -->
<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />

<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<!-- Main content -->
	<section class="content">
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
					<form:form role="form" modelAttribute="document" action="verification-document/add" method="post">
						<div class="box-body">
							<div class="clearfix"></div>
							<div class="form-group col-md-3">
								<label class="form-label" for="documentName">Document Name</label> <form:input
									type="text" class="form-control" id="documentName"
									placeholder="Document Name" path="documentName"/>
							</div>
							<div class="form-group col-md-3">
								<label class="form-label" for="documentDescription">Document Description</label>
								<form:input	type="text" class="form-control" id="documentDescription" placeholder="Document Description" path="documentDescription"/>
							</div>							
							<div class="form-group col-md-3">
								<label class="form-label" for="docProofType">Document Type</label>
								<form:select class="form-control" path="documentType">
									<form:options items="${types}"/>
								</form:select>
							</div>
							<div class="form-group col-md-3 add-verification-docs">
								<button class="btn btn-success add-verification-docs-but">Add</button>
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
						<table id="example1" class="table table-bordered table-striped">
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
                                                <td>${document.documentName}</td>
                                                <td>${document.documentDescription}</td>
                                                <td>${document.documentType}</td>
                                                	<c:choose>
										                <c:when test="${document.inactive == true}">
										                    <td>Inactive</td>
										                </c:when>
										                <c:otherwise>
										                    <td>Active</td>
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
<!-- jQuery 2.0.2 -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<script type="text/javascript">
    $(function() {
        $("#example1").dataTable();
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
