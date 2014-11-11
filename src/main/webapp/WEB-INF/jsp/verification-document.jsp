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
					<form role="form">
						<div class="box-body">
							<div class="clearfix"></div>
							<div class="form-group col-md-3">
								<label class="form-label" for="documentName">Document Name</label> <input
									type="text" class="form-control" id="documentName"
									placeholder="Document Name">
							</div>
							<div class="form-group col-md-3">
								<label class="form-label" for="documentDescription">Document Name</label>
								<input	type="text" class="form-control" id="documentDescription" placeholder="Document Description">
							</div>							
							<div class="form-group col-md-3">
								<label class="form-label" for="docProofType">Document Type</label>
								<select class="form-control">
									<option>Identity Proof</option>
									<option>Address Proof</option>
								</select>
							</div>
							<div class="form-group col-md-3 add-verification-docs">
								<button class="btn btn-success add-verification-docs-but">Add</button>
							</div>
							<div class="clearfix"></div>
						</div>
					</form>
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
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 4.0</td>
									<td>Internet Explorer 4.0</td>
									<td>Win 95+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 5.0</td>
									<td>Internet Explorer 4.0</td>
									<td>Win 95+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 5.5</td>
									<td>Internet Explorer 4.0</td>
									<td>Win 95+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 6</td>
									<td>Internet Explorer 4.0</td>
									<td>Win 98+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 7</td>
									<td>Internet Explorer 4.0</td>
									<td>Win XP SP2+</td>
								</tr>
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
