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
                <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
                <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/email-forgotPassword-confirmation.css" />">

        </head>

        <body>
            <!-- common header -->
            <%@ include file="./dashNavbar.jsp" %>

                <!-- registration confirmation page on body content -->
                <div class="container emForCon my-5 d-flex justify-content-center align-items-center">
                    <div class="px-5 py-5">
                        <a href="${pageContext.request.contextPath}"><img class="rounded-circle" src="<c:url value="/resources/images/abc-content/logo.png" />" alt="company
                        logo"></a>
                       	<c:choose>
							 <c:when test="${appliedUserJob != null}">
							     <div>                        	
		                            <h4>Hi! <span class="uAuth"> ${appliedUserName } </span></h4>
		                            <h4 class="my-2">Congratulations,</h4>
		                            <h4>You have successfully applied for the <span class="uAuth"> ${appliedUserJob } </span> job at <span class="uAuth"> ${appliedUserCom } </span>.</h4>
                       			</div>
							 </c:when>
							 <c:when test="${appliedUserJob == null}">
							     <div>                        	
		                            <h4>Hi! <span class="uAuth"> ${appliedUserName } </span></h4>
		                            <h4 class="my-2">You have already applied for this job. Please apply to <a href="${pageContext.request.contextPath}">another one</a> </h4>
		                        </div>
							 </c:when>
						</c:choose>   
					</div>
                </div>

                <!-- common footer -->
                <%@ include file="./footer.jsp" %>               
                
        </body>

        </html>