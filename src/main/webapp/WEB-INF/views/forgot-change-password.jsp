<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ page errorPage="error-page.jsp" %>
		<% if (session.getAttribute("loggedUserProfile") !=null) { response.sendRedirect("homepage"); } %>
			<% if (session.getAttribute("resetProfile") == null) { response.sendRedirect("login"); } %>
				<!DOCTYPE html>
				<html>

				<head>
					<meta charset="ISO-8859-1">

					<!-- all necessary links, cdns -->
					<%@ include file="./required-links-cdns.jsp" %>


						<!-- on page style -->
						<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
						<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/forgot-password.css" />">

						<title>Change Password Page</title>
				</head>

				<body>
					<!-- common header -->
					<%@ include file="./header.jsp" %>

						<!-- forgot password on body content -->
						<div class="container forgotPass my-5 d-flex justify-content-center align-items-center">
							<form action="password-reset" method="post" class="px-5 py-5">
								<h2>Please Create Your New Password</h2>
								<hr class="my-4">
								<h3>Create a memorizable strong password to be safe on online</h3>
								<span id="userIdentity" class="errMsg text-center">enter your email address or
									username</span>
								<input type="hidden" name="forgotPassIdentity" id="forgotPassIdentity"
									value="${resetProfile.email}">
								<input type="password" name="forgotPassCreate" id="forgotPassCreate"
									placeholder="create password" required>
								<span id="errorMsgCrePass" class="errMsg">minimum length is 8</span>
								<br><br>
								<input type="password" name="forgotPassConfirm" id="forgotPassConfirm"
									placeholder="confirm password" required>
								<span id="errorMsgPass" class="errMsg">password not matched</span>
								<hr class="my-4">
								<div class="text-end">
									<button type="reset" class="btn mx-4 btn-danger">Clear</button>
									<button type="submit" class="btn mx-1 btn-primary">Change</button>
								</div>
							</form>
						</div>

						<!-- common footer -->
						<%@ include file="./footer.jsp" %>
							
							<script type="text/javascript" src="<c:url value="/resources/js/resetPassValidation.js" />" ></script>

				</body>

				</html>