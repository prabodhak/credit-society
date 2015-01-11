<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page pageEncoding="utf-8" %>

<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="resources/images/avatar3.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>Hello, Jane</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
                <span class="input-group-btn">
                    <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i>
                    <span><spring:message code="master"/></span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a id="accountMasterTypeId" href="master/account-master-type"><i class="fa fa-angle-double-right"></i><spring:message code="master$accountTypeMaster"/></a></li>
                    <li><a id="accountTypeId" href="master/account-type/add"><i class="fa fa-angle-double-right"></i><spring:message code="master$accountType"/></a></li>
                    <li><a id="memberTypeId" href="master/member-type/view"><i class="fa fa-angle-double-right"></i><spring:message code="master$memberType"/></a></li>
                    <li><a id="associatedBankId" href="master/associated-bank/view"><i class="fa fa-angle-double-right"></i><spring:message code="master$associatedBank"/></a></li>
                    <li><a id="verificationDocumentId" href="master/verification-document"><i class="fa fa-angle-double-right"></i><spring:message code="master$verificationDocument"/></a></li>
                    <li><a href="pages/master/account.html"><i class="fa fa-angle-double-right"></i><spring:message code="master$account"/></a></li>
                    <li><a href="pages/master/share.html"><i class="fa fa-angle-double-right"></i> <spring:message code="master$share"/></a></li>
                </ul>                            
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-th"></i>
                    <span><spring:message code="members"/></span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a id="memberInfoId" href="member/member-info"><i class="fa fa-angle-double-right"></i><spring:message code="members$informationManagement"/></a></li>
                    <li><a id="memberAccountId" href="member/member-account"><i class="fa fa-angle-double-right"></i><spring:message code="members$accountManagement"/></a></li>
                    <li><a href="pages/member/3.html"><i class="fa fa-angle-double-right"></i> 3</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="pages/agent/index.html">
                    <i class="fa fa-bar-chart-o"></i>
                    <span>Agents</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/agents/1.html"><i class="fa fa-angle-double-right"></i> 1</a></li>
                    <li><a href="pages/agents/2.html"><i class="fa fa-angle-double-right"></i> 2</a></li>
                    <li><a href="pages/agents/3.html"><i class="fa fa-angle-double-right"></i> 3</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="pages/teller-services/index.html">
                    <i class="fa fa-edit"></i> <span><spring:message code="tellerServices"/></span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a id="depositId" href="teller/deposit"><i class="fa fa-angle-double-right"></i><spring:message code="tellerServices$deposit"/></a></li>
                    <li><a id="withdrawId" href="teller/withdrawal"><i class="fa fa-angle-double-right"></i><spring:message code="tellerServices$withdrawal"/></a></li>
                    <li><a id="fundTransferId" href="teller/fund-transfer"><i class="fa fa-angle-double-right"></i><spring:message code="tellerServices$fundTransfer"/></a></li>
                    <li><a id="passbookUpdateId" href="teller/passbook-update"><i class="fa fa-angle-double-right"></i><spring:message code="tellerServices$passbookUpdate"/></a></li>
                    <li><a id="ledgerEnquiryId" href="teller/ledger-enquiry"><i class="fa fa-angle-double-right"></i><spring:message code="tellerServices$ledgerEnquiry"/></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="pages/account/index.html">
                    <i class="fa fa-laptop"></i>
                    <span>Accounts</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/accounts/1.html"><i class="fa fa-angle-double-right"></i> 1</a></li>
                    <li><a href="pages/accounts/2.html"><i class="fa fa-angle-double-right"></i> 2</a></li>
                    <li><a href="pages/accounts/3.html"><i class="fa fa-angle-double-right"></i> 3</a></li>
                    <li><a href="pages/accounts/4.html"><i class="fa fa-angle-double-right"></i> 4</a></li>
                    <li><a href="pages/accounts/5.html"><i class="fa fa-angle-double-right"></i> 5</a></li>
                </ul>
            </li>            
            <li class="treeview">
                <a href="pages/report/index.html">
                    <i class="fa fa-table"></i> <span>Reports</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/reports/simple.html"><i class="fa fa-angle-double-right"></i> 1</a></li>
                    <li><a href="pages/reports/data.html"><i class="fa fa-angle-double-right"></i> 2</a></li>
                </ul>
            </li>
            <li>
                <a href="pages/calender/calendar.html">
                    <i class="fa fa-calendar"></i> <span>Calendar</span>
                    <small class="badge pull-right bg-red">3</small>
                </a>
            </li>
            <li>
                <a href="pages/mailbox/mailbox.html">
                    <i class="fa fa-envelope"></i> <span>Mailbox</span>
                    <small class="badge pull-right bg-yellow">12</small>
                </a>
            </li>
            <li class="treeview">
                <a href="pages/help/index.html">
                    <i class="fa fa-folder"></i> <span>Help</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/help/1.html"><i class="fa fa-angle-double-right"></i> 1</a></li>
                    <li><a href="pages/help/2.html"><i class="fa fa-angle-double-right"></i> 2</a></li>
                    <li><a href="pages/help/3.html"><i class="fa fa-angle-double-right"></i> 3</a></li>
                    <li><a href="pages/help/4.html"><i class="fa fa-angle-double-right"></i> 4</a></li>
                    <li><a href="pages/help/5.html"><i class="fa fa-angle-double-right"></i> 5</a></li>
                    <li><a href="pages/help/6.html"><i class="fa fa-angle-double-right"></i> 6</a></li>
                    <li><a href="pages/help/7.html"><i class="fa fa-angle-double-right"></i> 6</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="pages/exit/index.html">
                    <i class="fa fa-folder"></i> <span>Exit</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/exit/1.html"><i class="fa fa-angle-double-right"></i> 1</a></li>
                    <li><a href="pages/exit/2.html"><i class="fa fa-angle-double-right"></i> 2</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
<script>
$('#accountMasterTypeId,#accountTypeId,#memberTypeId,#associatedBankId,#verificationDocumentId,#memberInfoId,#memberAccountId,#depositId,#withdrawId,#fundTransferId,#fundTransferId,#passbookUpdateId,#ledgerEnquiryId')
	.click(function (e) {
	e.preventDefault();
	removeActiveClassFromAll();
	
	activeMenuId = '#' + $(this).attr('id');
	$(activeMenuId).addClass('active');
	
    url = $(this).attr('href');
    //alert(url);
	$.ajax({
		url: url,
		dataType: "html",
		type:	"get",
		success: function(response) {
			//alert(response);
			//var ajaxResponse = $(response).find('#ajaxResponseId').html();
			//$('#mainContent').html(ajaxResponse);
			
			var crudMenu = $(response).find('#crudMenuId').html();
			var mainContent = $(response).find('#mainContentId').html();
			$('#crudMenuId').html(crudMenu);
			$('#mainContentId').html(mainContent);			
			
			console.log("Success");
		},
		error: function(xhr) {
			console.log("Error");
		}
	});
});

function removeActiveClassFromAll(){
	$("#accountMasterTypeId").removeClass('active');
	$("#accountTypeId").removeClass('active');
	$("#memberTypeId").removeClass('active');
	$("#associatedBankId").removeClass('active');
	$("#verificationDocumentId").removeClass('active');
	$("#memberInfoId").removeClass('active');
	$("#memberAccountId").removeClass('active');
	$("#depositId").removeClass('active');
	$("#withdrawId").removeClass('active');
	$("#fundTransferId").removeClass('active');
	$("#fundTransferId").removeClass('active');
	$("#passbookUpdateId").removeClass('active');
	$("#ledgerEnquiryId").removeClass('active');
}
</script>
<%-- <script type="text/javascript">
dojo.addOnLoad(function() {
	Spring.addDecoration(new Spring.AjaxEventDecoration({
		elementId: "accountMasterTypeId",
		event: "onclick",
		params: { fragments: "menu, body" }
	}));
	Spring.addDecoration(new Spring.AjaxEventDecoration({
		elementId: "accountTypeId",
		event: "onclick",
		params: { fragments: "menu, body" }
	}));
	Spring.addDecoration(new Spring.AjaxEventDecoration({
		elementId: "memberTypeId",
		event: "onclick",
		params: { fragments: "menu, body" }
	}));
	Spring.addDecoration(new Spring.AjaxEventDecoration({
		elementId: "associatedBankId",
		event: "onclick",
		params: { fragments: "menu, body" }
	}));	
	Spring.addDecoration(new Spring.AjaxEventDecoration({
		elementId: "verificationDocumentId",
		event: "onclick",
		params: { fragments: "menu, body" }
	}));
	Spring.addDecoration(new Spring.AjaxEventDecoration({
		elementId: "memberInfoId",
		event: "onclick",
		params: { fragments: "menu, body" }
	}));
	Spring.addDecoration(new Spring.AjaxEventDecoration({
		elementId: "memberAccountId",
		event: "onclick",
		params: { fragments: "menu, body" }
	}));	
});
</script> --%>
