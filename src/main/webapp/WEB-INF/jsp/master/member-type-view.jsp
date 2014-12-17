<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<div id="body">	
	<aside class="right-side">
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Member Type List</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body table-responsive">
							<table id="memberTypeListId" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th style="width: 20%;"><spring:message code="label.memberType"/></th>
										<th style="width: 15%;"><spring:message code="label.shareAmount"/></th>
										<th style="width: 15%"><spring:message code="label.memberFee"/></th>
										<th style="width: 10%;"><spring:message code="label.miscCharge"/></th>
										<th style="width: 10%;"><spring:message code="label.electionParticipation"/></th>
										<th style="width: 10%;"><spring:message code="label.voteElibility"/></th>
										<th style="width: 10%;"><spring:message code="label.loanElibility"/></th>
										<th style="width: 10%;"><spring:message code="label.guarantorElibility"/></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Trident</td>
										<td>Internet Explorer 4.0</td>
										<td>10000</td>
										<td>12.59</td>
										<td>Daily</td>
										<td>Active</td>
										<td>12.59</td>
										<td>Daily</td>
									</tr>
									<tr>
										<td>Trident</td>
										<td>Internet Explorer 5.0</td>
										<td>10000</td>
										<td>14.20</td>
										<td>yearly</td>
										<td>InActive</td>
										<td>12.59</td>
										<td>Daily</td>
									</tr>
									<tr>
										<td>Trident</td>
										<td>Internet Explorer 5.5</td>
										<td>10000</td>
										<td>12.59</td>
										<td>Monthly</td>
										<td>Active</td>
										<td>12.59</td>
										<td>Daily</td>
									</tr>
									<tr>
										<td>Trident</td>
										<td>Internet Explorer 6</td>
										<td>10000</td>
										<td>12.00</td>
										<td>Quartly</td>
										<td>Active</td>
										<td>12.59</td>
										<td>Daily</td>
									</tr>
									<tr>
										<td>Trident</td>
										<td>Internet Explorer 7</td>
										<td>10000</td>
										<td>12.59</td>
										<td>Half Yearly</td>
										<td>12.59</td>
										<td>Daily</td>
										<td>Active</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</div>
		</section>
	</aside>
</div>
<!-- /.right-side -->
<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<script type="text/javascript">
    $(function() {
        $("#memberTypeListId").dataTable();
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