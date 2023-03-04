<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page errorPage="error-page.jsp" %>
<% if (session.getAttribute("loggedUserProfile") != null) { response.sendRedirect("homepage"); } %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">

		<!-- all necessary links, cdns -->
		<%@ include file="./required-links-cdns.jsp" %>


			<!-- on page style -->
			<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
			<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/forgot-password.css" />">

			<title>Forgot Password Page</title>
	</head>

	<body>
		<!-- common header -->
		<%@ include file="./header.jsp" %>

			<!-- forgot password on body content -->
			<div class="container forgotPass my-5 d-flex justify-content-center align-items-center">
				<form action="forgot-password-confirmation" method="post" class="px-5 py-5">
					<h2>Find Your Account</h2>
					<hr class="my-4">
					<h3>Please enter your email address or username to search for your account
					</h3>
					<span id="userIdentity" class="errMsg text-center">enter your email address or username</span>
					<input type="text" name="forgotPassIdentity" id="forgotPassIdentity"
						placeholder="enter your email or username">
					<hr class="my-4">
					<div class="text-end">
						<button type="reset" class="btn mx-4 btn-danger">Clear</button>
						<button type="submit" class="btn mx-1 btn-primary">Search</button>
					</div>
				</form>
			</div>

			<!-- common footer -->
			<%@ include file="./footer.jsp" %>
			
			
			<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

			<script type="text/javascript" src="<c:url value="/resources/js/resetPassOTPValidation.js" />" ></script>
	</body>

	</html>