<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ page errorPage="error-page.jsp" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<%@ page isELIgnored="false" %>
				<!DOCTYPE html>
				<html>

				<head>
					<meta charset="ISO-8859-1">

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
					<link rel="icon" type="jpg/gif/png" href="<c:url value="/resources/images/abc-content/icon.png" />">
					
					<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
				        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
				        crossorigin="anonymous" referrerpolicy="no-referrer" />
				    <link rel="stylesheet" href="style.css">
				    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

					<title>
						Site Map | ABC Jobs Portal
					</title>


					<!-- on page style and script -->
					<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/sitemap.css" />">
					<script type="text/javascript" src="<c:url value="/resources/js/sitemap.js" />" ></script>




				</head>

				<body>
				    <h3 style="color : tomato;">Double click to go through the link - </h3>
				        <div class="flex">
				            <div class="body genealogy-body genealogy-scroll">
				                <div class="genealogy-tree">
				                    <ul>
				                        <li>
				                            <a href="javascript:void(0);" ondblclick="pageNagivate('home');">
				                                <div class="member-view-box">
				                                    <div class="member-image">
				                                        <i class="fa-solid fa-house"></i>
				                                        <div class="member-details">
				                                            <h3>ABC Jobs Portal</h3>
				                                        </div>
				                                    </div>
				                                </div>
				                            </a>
				                            <ul class="active">
				                                <li>
				                                    <a href="javascript:void(0);" ondblclick="pageNagivate('login');">
				                                        <div class="member-view-box">
				                                            <div class="member-image">
				                                                <i class="fa-solid fa-right-to-bracket"></i>
				                                                <div class="member-details">
				                                                    <h3>Sign In</h3>
				                                                </div>
				                                            </div>
				                                        </div>
				                                    </a>
				                                    <ul class="active">
				                                        <li>
				                                            <a href="javascript:void(0);" ondblclick="pageNagivate('reset');">
				                                                <div class="member-view-box">
				                                                    <div class="member-image">
				                                                        <i class="fa-solid fa-passport"></i>
				                                                        <div class="member-details">
				                                                            <h3>Forgot Password</h3>
				                                                        </div>
				                                                    </div>
				                                                </div>
				                                            </a>
				                                        </li>
				                                    </ul>
				                                </li>
				                                <li>
				                                    <a href="javascript:void(0);" ondblclick="pageNagivate('signin');">
				                                        <div class="member-view-box">
				                                            <div class="member-image">
				                                                <i class="fa-solid fa-id-card"></i>
				                                                <div class="member-details">
				                                                    <h3>Sign Up</h3>
				                                                </div>
				                                            </div>
				                                        </div>
				                                    </a>
				                                </li>
				                                <li>
				                                    <a href="javascript:void(0);" ondblclick="pageNagivate('contact');">
				                                        <div class="member-view-box">
				                                            <div class="member-image">
				                                                <i class="fa-brands fa-contao"></i>
				                                                <div class="member-details">
				                                                    <h3>Contact Us</h3>
				                                                </div>
				                                            </div>
				                                        </div>
				                                    </a>
				                                </li>
				                                <li>
				                                    <a href="javascript:void(0);">
				                                        <div class="member-view-box">
				                                            <div class="member-image">
				                                                <i class="fa-solid fa-address-card"></i>
				                                                <div class="member-details">
				                                                    <h3>About Us</h3>
				                                                </div>
				                                            </div>
				                                        </div>
				                                    </a>
				                                </li>
				                                <li>
				                                    <a href="javascript:void(0);">
				                                        <div class="member-view-box">
				                                            <div class="member-image">
				                                                <i class="fa-solid fa-shield-halved"></i>
				                                                <div class="member-details">
				                                                    <h3>Privacy & Policy</h3>
				                                                </div>
				                                            </div>
				                                        </div>
				                                    </a>
				                                </li>
				                            </ul>
				                        </li>
				                    </ul>
				                </div>
				            </div>
				        </div>
				</body>

				</html>