<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page errorPage="error-page.jsp" %>
 <% if (session.getAttribute("loggedUserProfile") == null) { response.sendRedirect("/AbcJobPortal/login"); } %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">

		<!-- all necessary links, cdns -->
		<%@ include file="./required-links-cdns-log.jsp" %>

			<!-- on page style -->
			<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/homebody.css" />">
			<script type="text/javascript" src="<c:url value="/resources/js/homebody.js" />"></script>

			
	</head>

	<body>
		<!-- common header -->
		<%@ include file="./dashNavbar.jsp" %>

			<!-- common home body -->
			<%@ include file="./homebody.jsp" %>

				<!-- common footer -->
				<%@ include file="./footer.jsp" %>
	</body>

	</html>