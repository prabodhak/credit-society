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
							<table id="memberTypeListViewId" class="table table-bordered table-striped">
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
									<c:forEach var="memberType" items="${memberTypes}">
										<tr>
											<c:choose>
												<c:when test="${operation eq 'edit'}">
													<td><a href="master/member-type/${memberType.id}/edit">${memberType.type}</a></td>
												</c:when>
												<c:otherwise>
													<td>${memberType.type}</td>
												</c:otherwise>
											</c:choose>
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
        $("#memberTypeListViewId").dataTable({
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false
        });
    });

    var operation="${operation}";
    if(operation == "edit" ){
    	$('#crudMenuEditId').addClass('active');
    }else if( operation == "view" ){
    	$('#crudMenuViewId').addClass('active');	
    }
    
</script>
