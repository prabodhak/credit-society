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
						<form action="master/member-type/delete" method="post">
							<div class="box-header">
								<h3 class="box-title">Member Type List</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive">
								<table id="memberTypeListDeleteId" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th style="width: 5%;"></th>
											<th style="width: 15%;"><spring:message code="label.memberType"/></th>
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
										
										<c:forEach var="memberType" items="${memberTypes}">
											<tr>
												<td>
													<div class="checkbox">
														<input type="checkbox" name="deleted" id="memberTypeId" value="${memberType.id}"/>
													</div>
												</td>
												<td>${memberType.type}</td>
												<td>${memberType.sharesAmount}</td>
												<td>${memberType.memberFee}</td>
												<td>${memberType.miscellaneousCharge}</td>
												<td>${memberType.participateInElection}</td>
												<td>${memberType.eligibleForVoting}</td>
												<td>${memberType.eligibleForLoan}</td>
												<td>${memberType.eligibleforGuarantor}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="clearfix"></div>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary"><spring:message code="button$delete"/></button>
							</div>
						</form>
					</div>
					<!-- /.box -->
				</div>
			</div>
		</section>		
	</aside>
<!-- /.right-side -->
</div>
<!-- DATA TABES SCRIPT -->
<script src="resources/js/plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<script type="text/javascript">
    $(function() {
        $("#memberTypeListDeleteId").dataTable({
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false
        });
    });

    $('#crudMenuDeleteId').addClass('active');
    
  	//alert($('#accountTypeId').parent().nodeName);
</script>