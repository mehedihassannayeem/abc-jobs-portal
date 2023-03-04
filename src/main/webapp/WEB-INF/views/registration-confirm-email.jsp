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
			
			<title>Email Confirm Page</title>

	</head>

	<body>
		<!-- common header -->
		<%@ include file="./header.jsp" %>

			<!-- registration confirmation page on body content -->
			<div class="container emForCon my-5 d-flex justify-content-center align-items-center">
				<div class="px-5 py-5">
					<img class="rounded-circle" src="<c:url value="/resources/images/abc-content/logo.png" />" alt="company logo">
					<form action="registration-confirmation" method="post" class="pt-4">					
						<h4 class="my-4"><span class="uAuth"><%=session.getAttribute("newUserName")%></span>, thank you for your registration. A
							confirmation email has been sent to <span class="uAuth"><%=session.getAttribute("newUserEmail")%></span></h4>
						<div class="otpContainer">
							<span id="emOtpMsg" class="errMsg d-block text-center">6 digits code</span>
						</div>
						<div class="otpContainer">
							<input class="otpInput" type="text" name="emOtpCon" id="emOtpCon"
								placeholder="Enter the sent OTP">
						</div>
						<input type="submit" id="userTypedEmOtp" class="btn btn-primary d-block m-auto mt-5"
                                value="Confirm Email" disabled></input>
					</form>
				</div>
			</div>

			<!-- common footer -->
			<%@ include file="./footer.jsp" %>

            <script type="text/javascript" src="<c:url value="/resources/js/emailVerification.js" />" ></script>
	</body>

	</html>