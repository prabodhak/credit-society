<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />

<aside class="right-side">
	<!-- <a class="btn btn-app"> <i class="fa fa-edit"></i> Add
	</a> <a class="btn btn-app"> <i class="fa fa-edit"></i> Edit
	</a> <a class="btn btn-app"> <i class="fa fa-edit"></i> View
	</a> <a class="btn btn-app"> <i class="fa fa-edit"></i> Delete
	</a>-->

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
<!-- 
	<div class="btn-group" style="margin-left:15px;">
		<button type="button" class="btn btn-default">Left</button>
		<button type="button" class="btn btn-default">Middle</button>
		<button type="button" class="btn btn-default">Right</button>
	</div>
-->

	<!-- Main content -->
	<section class="content" style="padding-top:0px;">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-solid box-primary">
					<div class="box-header">
						<h3 class="box-title">Add Master Account Type</h3>
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
							<div class="form-group col-md-4">
								<label class="form-label" for="masterAccountName">Master
									Account Name</label> <input type="text" class="form-control width-3"
									id="masterAccountName" placeholder="Master Accoount Name">
							</div>
							<div class="form-group col-md-4">
								<label class="form-label" for="masterAccountDescription">Master
									Account Description</label> <input type="text"
									class="form-control width-3" id="masterAccountDescription"
									placeholder="Master Accoount Description">
							</div>
							<div class="form-group col-md-4 add-master-account-type-docs">
								<button class="btn btn-success add-master-account-type-docs-but">Add</button>
							</div>
							<div class="clearfix"></div>
						</div>
					</form>
				</div>
				<!-- /.box -->

				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Master Account Type List</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body table-responsive">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th style="width: 25%;">Account Type</th>
									<th style="width: 60%;">Account Description</th>
									<th style="width: 15%;">Status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 4.0</td>
									<td>Win 95+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 5.0</td>
									<td>Win 95+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 5.5</td>
									<td>Win 95+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 6</td>
									<td>Win 98+</td>
								</tr>
								<tr>
									<td>Trident</td>
									<td>Internet Explorer 7</td>
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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<!-- Bootstrap -->
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>	
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