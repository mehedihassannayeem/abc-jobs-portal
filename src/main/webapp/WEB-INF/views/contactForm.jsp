<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page errorPage="error-page.jsp" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">

            <!-- all necessary links, cdns -->
            <%@ include file="./required-links-cdns.jsp" %>


                <!-- on page style -->
                <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
                <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/email-forgotPassword-confirmation.css" />">
				<title>Contact Form | ABC Jobs Portal</title>
        </head>

        <body>
            <!-- common header -->
            <%@ include file="./header.jsp" %>

                <!-- registration confirmation page on body content -->
                <div class="container emForCon my-5 d-flex justify-content-center align-items-center">
                    <div class="px-5 py-5">
                        <img class="rounded-circle" src="<c:url value="/resources/images/abc-content/logo.png" />" alt="company
                        logo">
                        <div>
                        	<h3 class="errMsg">Not submitted. Please provide the necessary information to contact with us !</h3>
                            <h4><span class="uAuth"> <%=session.getAttribute("conFormName")%> </span>, thanks for contacting us.</h4>
                            <h4 class="my-4">We will contact with you very soon through <span class="uAuth"> <%=session.getAttribute("conFormEmail")%> </span></h4>
                        </div>
                    </div>
                </div>

                <!-- common footer -->
                <%@ include file="./footer.jsp" %>
                
                <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
                <script type="text/javascript" src="<c:url value="/resources/js/contactForm.js" />" ></script>
        </body>

        </html>