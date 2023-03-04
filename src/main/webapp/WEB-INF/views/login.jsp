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
            <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css" />">
            <title>Login Page</title>
    </head>

    <body>

        <!-- common header -->
        <%@ include file="./header.jsp" %>

            <!-- login page on body content-->
            <div class="container logPage my-5">
                <div class="row">
                    <div class="leftSide col-12 col-md-6">
                        <div class="d-flex flex-column align-items-center">
                            <div class="info p-5">
                                <h2>New Comer ?</h2>
                                <p>Enter your details <br> And start your journey with us</p>
                                <div class="text-end">
                                    <a href="${pageContext.request.contextPath}/registration"
                                        class="btn btn-primary mt-4">Register</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="containerBox border py-5 px-3 text-center m-auto">
                            <form action="homepage" method="post">
                                <div>
                                    <a href="${pageContext.request.contextPath}">
                                        <img class="rounded-circle border" src="<c:url value="/resources/images/abc-content/logo.png" />"
                                            alt="company logo">
                                    </a>
                                </div>
                                <h2 class="my-3">ABC Jobs Portal</h2>
                                <span id="inValLogCre" class="errMsg text-center">Invalid Login Credentials !</span>
                                <div>
                                    <div class="formgroup">
                                        <input type="text" name="email" id="logFormUsername"
                                            placeholder="Enter your email or username">
                                        <span id="logErrUname" class="errMsg">Enter your email address or username</span>
                                    </div>
                                    <div class="formgroup">
                                        <input type="password" name="user_password" id="logFormPassword"
                                            placeholder="Enter your password">
                                        <span id="logErrUpass" class="errMsg">Enter your password</span>
                                    </div>
                                    <div class="formgroup text-start ms-3 ms-md-5">
                                        <input type="checkbox" name="logFormRemPass" id="logFormRemPass"> <span>Remember
                                            me</span>
                                    </div>
                                    <div class="formgroup my-5">
                                        <!-- <input type="submit" value="Log In"> -->
                                        <button type="submit" class="btn btn-primary border-none rounded">Log In</button>
                                    </div>
                                    <div>
                                        <hr class="my-4">
                                        <p class="resPass">Have you forgotten your password ? <a
                                                href="${pageContext.request.contextPath}/forgot-password">reset
                                                password</a>
                                        </p>
                                    </div>

                                </div>
                            </form>
                        </div>
                        <div class="containerBox border py-5 px-3 text-center m-auto">
                            <h3>Or</h3>
                            <h3>Continue with</h3>
                            <i class="fa-brands fa-3x mx-5 mt-5 mb-2 fa-google"></i>
                            <i class="fa-brands fa-3x mx-5 mt-5 mb-2 fa-linkedin-in"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- common footer -->
            <%@ include file="./footer.jsp" %>
            
            <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">


            <script type="text/javascript" src="<c:url value="/resources/js/loginValidation.js" />" ></script>         

    </body>

    </html>