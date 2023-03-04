<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page errorPage="error-page.jsp" %>
<% if (session.getAttribute("loggedUserProfile") != null) { response.sendRedirect("homepage"); } %>
<% if ((session.getAttribute("newUserName") == null) || (session.getAttribute("newUserEmail") == null) || (session.getAttribute("userAuthOtp") == null)) { response.sendRedirect("registration"); } %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">

		<!-- all necessary links, cdns -->
		<%@ include file="./required-links-cdns.jsp" %>


			<!-- on page style -->
			<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
			<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/email-forgotPassword-confirmation.css" />">

			<title>Account Confirmation Page</title>
	</head>

	<body>
		<!-- common header -->
		<%@ include file="./header.jsp" %>

			<!-- registration confirmation page on body content -->
			<div class="container emForCon my-5 d-flex justify-content-center align-items-center">
				<div class="px-5 py-5">
					<img class="rounded-circle" src="<c:url value="/resources/images/abc-content/logo.png" />" alt="company logo">
					<div>
						<h4><span class="uAuth"><%=session.getAttribute("newUserName")%></span>, your account has been registered successfully.</h4>
						<h4 class="my-4">Use the provided email or username to log in.</h4>
						<a href="${pageContext.request.contextPath}/reg-success" class="btn btn-primary d-block w-25 m-auto mt-5">Log
							In</a>
					</div>
				</div>
			</div>

			<!-- common footer -->
			<%@ include file="./footer.jsp" %>
	</body>

	</html>