<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page pageEncoding="utf-8" %>

<link href="resources/css/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<div id="menu">
	<aside class="right-side">
		<section class="content" style="padding-bottom:0px;">
			<div class="row" align="left">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box box-primary">
						<div class="box-header" style="padding:2px;">
							<a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> <spring:message code="crud$menu$add"/>
							</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> <spring:message code="crud$menu$edit"/>
							</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i> <spring:message code="crud$menu$view"/>
							</a> <a class="btn btn-app" style="margin:0px;"> <i class="fa fa-edit"></i>
								<spring:message code="crud$menu$delete"/>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</aside>
</div>