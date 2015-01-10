<div id="ajaxResponseId">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<!-- DATA TABLES -->
	<link href="resources/css/datatables/dataTables.bootstrap.css"
		rel="stylesheet" type="text/css" />
	
	<!-- Right side column. Contains the navbar and content of the page -->
	<div id="body">
		<aside class="right-side">
			<!-- Main content -->
			<section class="content" style="padding-top:0px;">
				<div class="row">
					<!-- left column -->
					<div class="col-md-12">
						<!-- general form elements -->
						<div class="box box-solid box-primary">
							<div class="box-header">
								<h3 class="box-title"><spring:message code="master$memberType$add"/></h3>
								<div class="box-tools pull-right">
									<button class="btn btn-primary btn-sm" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<c:if test="${not empty message}">
								<div id="message" class="success">${message}</div>	
					  		</c:if>
					  		<c:choose>
						        <c:when test="${memberType['new']}">
						        	<c:set var="method" value="post"/>
						        	<c:set var="action" value="add"/>
						        </c:when>
						        <c:otherwise>
						        	<c:set var="method" value="put"/>
						        	<c:set var="action" value="edit"/>
						        </c:otherwise>
						    </c:choose>
							<form:form role="form" modelAttribute="memberType" action="master/member-type/${action}" method="${method}">
								<div class="box-body">
									<div class="form-group col-md-4">
										<label class="form-label" for="memberTypeId"><spring:message code="label.memberType"/></label>
										<form:input type="text" class="form-control width-3"
											id="memberTypeId" placeholder="Member Type" path="type" />
									</div>		
									<div class="clearfix"></div>
									<div class="form-group col-md-4">
										<label class="form-label" for="sharesAmountId"><spring:message code="label.shareAmount"/></label>
										<form:input type="text" class="form-control width-3"
											id="sharesAmountId" placeholder="Shares Amount" path="sharesAmount" />
									</div>	
									<div class="form-group col-md-4">
										<label class="form-label" for="memberFeeId"><spring:message code="label.memberFee"/></label>
										<form:input type="text" class="form-control width-3"
											id="memberFeeId" placeholder="memberFee" path="memberFee" />
									</div>	
									<div class="form-group col-md-4">
										<label class="form-label" for="miscellaneousChargeId"><spring:message code="label.miscellaneousCharge"/></label>
										<form:input type="text" class="form-control width-3"
											id="miscellaneousChargeId" placeholder="miscellaneousCharge" path="miscellaneousCharge" />
									</div>	
									<div class="clearfix"></div>	
								
									<div class="form-group col-md-4">
										<label class="form-label" for="participateInElectionId"><spring:message code="label.participateInElection"/></label>
										<div class="checkbox margin-none">
											<label> <form:checkbox
													id="participateInElectionId" path="participateInElection" /> <spring:message code="yes"/>
											</label>
										</div>
									</div>	
									<div class="form-group col-md-4">
										<label class="form-label" for="eligibleForVotingId"><spring:message code="label.eligibleForVoting"/></label>
										<div class="checkbox margin-none">
											<label> <form:checkbox
													id="eligibleForVotingId" path="eligibleForVoting" /> <spring:message code="yes"/>
											</label>
										</div>
									</div>	
									<div class="form-group col-md-4">
										<label class="form-label" for="eligibleForLoanId"><spring:message code="label.eligibleForLoan"/></label>
										<div class="checkbox margin-none">
											<label> <form:checkbox
													id="eligibleForLoanId" path="eligibleForLoan" /> <spring:message code="yes"/>
											</label>
										</div>
									</div>	
									<div class="clearfix"></div>
									<div class="form-group col-md-4">
										<label class="form-label" for="eligibleforGuarantorId"><spring:message code="label.eligibleForGuarantor"/></label>
										<div class="checkbox margin-none">
											<label> <form:checkbox
													id="eligibleforGuarantorId" path="eligibleforGuarantor" /> <spring:message code="yes"/>
											</label>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="box-footer add-verification-docs">
							            <c:choose>
							                <c:when test="${memberType['new']}">
							                    <button type="submit" class="btn btn-success"><spring:message code="master$members$memberType$addMemberType.button"/></button>
							                </c:when>
							                <c:otherwise>
							                    <button type="submit" class="btn btn-success"><spring:message code="master$members$memberType$updateMemberType.button"/></button>
							                </c:otherwise>
							            </c:choose>
							        </div>	
									<div class="clearfix"></div>		
								</div>
								<!-- /.box-body -->	
							</form:form>
						</div>
						<!-- /.box -->
						
						<!-- /.box -->
		
					</div>
					<!--/.col (left) -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</aside>
	</div>
	<!-- /.right-side -->
</div>