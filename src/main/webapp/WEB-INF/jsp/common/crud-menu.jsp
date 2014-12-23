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
					<div class="box box-primary crud-menu" style="padding:2px;">
						<a id="crudMenuAddId" class="btn btn-app" style="margin:0px;" href="master/member-type/add"> <i class="fa fa-plus"></i> <spring:message code="crud$menu$add"/>
						</a> <a id="crudMenuEditId" class="btn btn-app" style="margin:0px;" href="master/member-type/edit"> <i class="fa fa-edit"></i> <spring:message code="crud$menu$edit"/>
						</a> <a id="crudMenuViewId" class="btn btn-app" style="margin:0px;" href="master/member-type/view"> <i class="fa fa-search"></i> <spring:message code="crud$menu$view"/>
						</a> <a id="crudMenuDeleteId" class="btn btn-app" style="margin:0px;" href="master/member-type/delete"> <i class="fa fa-trash-o"></i><spring:message code="crud$menu$delete"/></a>
					</div>
				</div>
			</div>
		</section>
	</aside>
</div>
