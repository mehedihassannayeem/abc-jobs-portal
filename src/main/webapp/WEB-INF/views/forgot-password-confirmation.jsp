<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ page errorPage="error-page.jsp" %>
		<% if (session.getAttribute("loggedUserProfile") != null) { response.sendRedirect("homepage"); } %>
			<% if (session.getAttribute("resetProfile") == null) { response.sendRedirect("login"); } %>
				<!DOCTYPE html>
				<html>

				<head>
					<meta charset="ISO-8859-1">

					<!-- all necessary links, cdns -->
					<%@ include file="./required-links-cdns.jsp" %>


						<!-- on page style -->
						<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
						<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/email-forgotPassword-confirmation.css" />">

						<title>Forgot Password Confirmation Page</title>
				</head>

				<body>
					<!-- common header -->
					<%@ include file="./header.jsp" %>

						<!-- forgot password confirmation on body content -->						
						<div class="container emForCon my-5 d-flex justify-content-center align-items-center">
							<div class="px-5 py-5">
								<c:if test="${resetProfile.profile_image == null }">
									<img class="rounded-circle" src="<c:url value="/resources/images/abc-content/logo.png" />" alt="company logo">
								</c:if>
								<c:if test="${resetProfile.profile_image != null}">
									<img class="rounded-circle" src="<c:url value="/resources/user-contents/${resetProfile.profile_image}" />" alt="images
									of ${resetProfile.username}">
								</c:if>								
								<form action="reset-account-password" method="post" class="pt-4">
									<div class="mt-5 pt-5">
										<h4>Hi! <span class="uAuth">${resetProfile.username}</span>.
											<br> We've sent an OTP to your <span class="uAuth">${resetProfile.email}</span> address.
											<br>Please verify and create a memorizable strong password to be safe on online.
										</h4>
									</div>
									<div class="otpContainer">
										<span id="resOtpMsg" class="errMsg d-block text-center">6 digits code</span>
									</div>
									<div class="otpContainer">
										<input class="otpInput" type="text" name="resOtpCon" id="resOtpCon"
											placeholder="Enter the sent OTP">
									</div>
									<input type="submit" id="userTypedResOtp" class="btn btn-primary d-block m-auto mt-5"
										value="Confirm Your Identity" disabled></input>
								</form>
							</div>
						</div>

						<!-- common footer -->
						<%@ include file="./footer.jsp" %>							

							<script type="text/javascript" src="<c:url value="/resources/js/resetPassVerification.js" />" >
							</script>
				</body>

				</html>