<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page isELIgnored="false" %>
			<%@ page errorPage="error-page.jsp" %>

			<!DOCTYPE html>
			<html>

			<head>
				<!-- meta browser section -->
				<meta charset="UTF-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">


				<!-- meta developer section -->
				<meta name="developer" content="Mehedi Hassan">
				<meta name="keywords"
					content="HTML, CSS, XML, XHTML, JavaScript, Java, jQuery, JSP, Spring, Spring Core, Spring Context, Spring MVC, MySQL, SQL, Servlet, JDBC, Spring Hibernate, BootStrap, BootStrap Icons, FontAwesome icons">
				<meta name="author" content="ABC Jobs Portal">
				<meta name="description"
					content="This page has been made for ABC Jobs Portal for helping the authority to easily maintain their consumers, courses, upcoming events, and pieces of information.">


				<!-- icon style link -->
				<link rel="icon" type="jpg/gif/png" href="<c:url value="/resources/images/developer/dev-icon.png" />" >


				<title>
					Mehedi Hassan | Designer & Developer
				</title>


				<!-- on page style and script -->
				<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/developer.css" />">

				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
			</head>

			<body class="developer">
				<div class="wrapper">
					<div class="img-area">
						<div class="inner-area">
							<img src="<c:url value="/resources/images/developer/dev-icon.png" />" alt="developer image">
						</div>
					</div>
					<div class="icon arrow"><a href="${pageContext.request.contextPath}"><i class="fas fa-arrow-left"></i></a></div>
					<div class="name">Mehedi Hassan</div>
					<div class="about">Designer & Developer</div>
					<div class="social-icons">
						<a href="#" class="fb"><i class="fab fa-facebook-f"></i></a>
						<a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
						<a href="#" class="insta"><i class="fab fa-instagram"></i></a>
						<a href="#" class="yt"><i class="fab fa-youtube"></i></a>
					</div>
					<div class="buttons">
						<button>Message</button>
						<button>Subscribe</button>
					</div>
					<div class="social-share">
						<div class="row">
							<i class="far fa-heart"></i>
							<i class="icon-2 fas fa-heart"></i>
							<span>20.4k</span>
						</div>
						<div class="row">
							<i class="far fa-comment"></i>
							<i class="icon-2 fas fa-comment"></i>
							<span>14.3k</span>
						</div>
						<div class="row">
							<i class="fas fa-share"></i>
							<span>12.8k</span>
						</div>
					</div>
				</div>
			</body>

			</html>