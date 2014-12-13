<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
	<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
	<title>Insert title here</title>
	<!-- CSS -->
	<!-- bootstrap 3.0.2 -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- font Awesome -->
	<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<!-- Ionicons -->
	<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	<!-- Theme style -->
	<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />
	<!-- fullCalendar -->
	<link href="resources/css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
	<link href="resources/css/form.css" rel="stylesheet" type="text/css" />
	<!-- JS -->
	<!-- jQuery 2.1.1 -->
	<script	src="resources/js/plugins/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
	<!-- jQuery UI 1.10.3 -->
	<script src="resources/js/plugins/jquery/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
	<!-- jQuery form validation v1.13.1-->
	<script src="resources/js/plugins/jquery/jquery.validate.min.js" type="text/javascript"></script>
	
	<script src="resources/js/dojo.js" type="text/javascript"></script>
	<script src="resources/js/Spring.js" type="text/javascript"></script>
	<script src="resources/js/Spring-Dojo.js" type="text/javascript"></script>
	
</head>
<body class="skin-blue">
	<tiles:insertAttribute name="header"/>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<tiles:insertAttribute name="left-sidebar"/>
		<tiles:insertAttribute name="main-content"/>
	</div>
	<!--<tiles:insertAttribute name="footer"/>-->
	
	<!-- JS -->
	<!-- Bootstrap -->
	<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- fullCalendar -->
	<script src="resources/js/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
	<!-- common for all pages -->
	<script src="resources/js/common.js" type="text/javascript"></script>
	
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="resources/js/AdminLTE/dashboard.js" type="text/javascript"></script>
	
</body>
</html>