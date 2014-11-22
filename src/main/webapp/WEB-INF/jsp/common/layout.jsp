<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
<%@ include file="include.jsp" %>
<title>Insert title here</title>
</head>
<body class="skin-blue">
	<tiles:insertAttribute name="header"/>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<tiles:insertAttribute name="left-sidebar"/>
		<tiles:insertAttribute name="main-content"/>
	</div>
	<!--<tiles:insertAttribute name="footer"/>-->
</body>
</html>