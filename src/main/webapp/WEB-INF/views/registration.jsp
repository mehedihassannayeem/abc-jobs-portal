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
            <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/registration.css" />">
			
			<title>User Registration Page</title>            

    </head>

    <body>

        <!-- common header -->
        <%@ include file="./header.jsp" %>


            <!-- registration page on body content -->
            <div class="container-fluid regForm p-5 my-5">
                <div class="row">
                    <div class="col-12 col-lg-9">
                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="containerBox border py-5 px-3 text-center m-auto">
                                    <form action="registration-confirm-email" method="post">
                                        <div>
                                            <a href="${pageContext.request.contextPath}"><img class="rounded-circle border" src="<c:url value="/resources/images/abc-content/logo.png" />"
                                                    alt="company logo"></a>
                                        </div>
                                        <h2 class="my-3">ABC Jobs Portal</h2>
                                        <span id="noU" class="errMsg text-center"></span>
                                        <div>
                                            <div class="formgroup">
                                                <input type="text" name="up_userPersonalInfo.fullname" id="regFormFullname"
                                                    placeholder="fullname"> <span  id="errorMsgFullname" class="errMsg">minimum
                                                    length is 5</span>
                                            </div>
                                            <div class="formgroup">
                                                <input type="text" name="username" id="regFormUsername"
                                                    placeholder="username"> <span id="errorMsgUsername"  class="errMsg">space not allowed, will be replaced with (-)</span>
                                            </div>
                                            <div class="formgroup">
                                                <input type="email" name="email" id="regFormEmail"
                                                    placeholder="email"> <span id="errorMsgEmail" class="errMsg"></span>
                                            </div>
                                            <div class="formgroup">
                                                <input type="password" name="regFormCrePass" id="regFormCrePass"
                                                    placeholder="create password">
                                                <span id="errorMsgCrePass"  class="errMsg">minimum length is 8</span>
                                            </div>
                                            <div class="formgroup">
                                                <input type="password" name="user_password" id="regFormConPass"
                                                    placeholder="confirm password">
                                                <span id="errorMsgPass" class="errMsg">password not matched</span>
                                            </div>
                                            <div class="formgroup mt-5">
                                                <!-- <input type="submit" value="Register" id="regSubmitBtn"> -->
                                                <button type="submit" class="btn btn-primary border-none rounded" id="regSubmitBtn">Register</button>
                                            </div>
                                            <input type="hidden" name="up_userAddress.isCreated" id="userAddressIsCreated" value="yes">
                                            <input type="hidden" name="up_userSocialAccounts.isCreated" id="userSocialAccountsIsCreated" value="yes">
                                            <input type="hidden" name="up_userProfessionalInfo.isCreated" id="userProfessionalInfoIsCreated" value="yes">
                                            <input type="hidden" name="up_useWorkLinks.isCreated" id="useWorkLinksIsCreated" value="yes">                                                                                 
                                        </div>
                                         <input type="hidden" name="up_userPersonalInfo.active_status" id="regFormFullname" value="Online">
                                    </form>
                                </div>

                            </div>
                            <div class="col-12 col-lg-6 d-flex flex-column align-items-center">
                                <div class="containerBox border py-5 px-3 text-center m-auto">
                                    <h3>Or</h3>
                                    <h3>Continue with</h3>
                                    <i class="fa-brands fa-3x mx-5 mt-5 mb-2 fa-google"></i> <i
                                        class="fa-brands fa-3x mx-5 mt-5 mb-2 fa-linkedin-in"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-3 leftSide">
                        <div class="d-flex flex-column align-items-center">
                            <div class="info p-5 text-center">
                                <h2>Welcome Back !</h2>
                                <p>
                                    To keep connected with us <br> Please login with your
                                    personal information
                                </p>
                                <a href="${pageContext.request.contextPath}/login" class="btn btn-primary mt-4">Log In</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- common footer -->
            <%@ include file="./footer.jsp" %>
            
            <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">


            <script type="text/javascript" src="<c:url value="/resources/js/registrationValidation.js" />" ></script>
            
             <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

			<script type="text/javascript" src="<c:url value="/resources/js/registrationOTPValidation.js" />" ></script>
                   
    </body>

    </html>