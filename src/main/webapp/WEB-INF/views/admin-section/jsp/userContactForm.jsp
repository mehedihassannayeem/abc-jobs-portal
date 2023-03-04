<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>User Contact Form</title>

        <!-- all necessary links, cdns -->
        <%@ include file="./required-links.jsp" %>

    </head>

    <body>
        <!-- <div class="sidebar close"> -->
        <%@ include file="./sidenav.jsp" %>

            <!-- on page content -->
            <section class="home-section">
                <div class="container-fluid">
                    <!-- nav bar -->
                    <%@ include file="./navbar.jsp" %>


                        <div class="row" id="userContactForm">
                            <div class="col-12 px-4">
                            	<div class="container w-75 my-5">
                            		<c:choose>         
								         <c:when test = "${contactForm_msg != null}">
								           	<p class="text-center fs-1 text-success fw-bolder text-uppercase">${contactForm_msg }</p>
								         </c:when>										         
								         <c:when test = "${contactForm_msg_err != null}">
								            <p class="text-center fs-1 text-danger fw-bolder text-uppercase">${contactForm_msg_err }</p>
								         </c:when>
									</c:choose>
                            	</div>
                                <!-- contact form section -->
                                <p class="tblHeading mt-5">Contact Form</p>
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Query Sl No</th>
                                            <th>Query Type</th>
                                            <th>User Name</th>
                                            <th>User Email</th>
                                            <th>User Queries</th>
                                            <th>Response Taken By</th>
                                            <th>Response Taken On</th>
                                            <th>Response Id</th>
                                            <th>Response</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	
                                    	<c:forEach items="${contactForms }" var="contactForm">
                                    		<tr>
                                                <td data-label="Query Sl No">${contactForm.contact_form_query_id }</td>
                                                <td data-label="Query Type">${contactForm.querying_for }</td>
                                                <td data-label="User Name">${contactForm.user_name }</td>
                                                <td data-label="User Email">${contactForm.user_email }</td>
                                                <td data-label="User Queries">${contactForm.user_query }</td>
                                                 <td data-label="Response Taken By">${contactForm.response_taken_by }</td>
                                                <td data-label="Response Taken On">${contactForm.response_taken_on }</td>
                                                <td data-label="Response Id">${contactForm.response_id }</td>
                                                <td data-label="Response">${contactForm.response }</td>
                                                <td data-label="Action">
                                                    <a href="${pageContext.request.contextPath}/response-user-query/${contactForm.contact_form_query_id }" class="bt">Response</a>
                                                    <a href="${pageContext.request.contextPath}/delete-user-query/${contactForm.contact_form_query_id }" class="bt">Remove</a>
                                                </td>
                                            </tr>
                                    	</c:forEach>                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>

                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>