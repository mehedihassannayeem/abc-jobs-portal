<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>View All Emails</title>

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

                        
                        <div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${email_sent_msg }</p></div>
                        <div class="container w-75 my-5"><p class="text-center fs-1 text-danger fw-bolder text-uppercase">${email_sent_msg_un }</p></div>
                            <p class="tblHeading mt-5">Sent Bulk Emails</p>
                            <div class="row" style="overflow-x: auto; white-space: nowrap; ">
                            <div class="col-12 px-4">
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Bulk Email Sl No</th>
                                            <th>Admin Name</th>
                                            <th>Invited Email Address One</th>
                                            <th>Invited Email Address Two</th>
                                            <th>Invited Email Address Three</th>
                                            <th>Invited Email Address Four</th>
                                            <th>Invited Email Address Five</th>
                                            <th>Invited At</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${allEmails }" var="email">
                                    		<tr>
                                    			<td data-label="Bulk Email Sl No">${email.bulk_email_serial }</td>
                                                <td data-label="Admin Name">${email.admin_name }</td>
                                                <td data-label="Invited Email Address">${email.invited_email_address_1 }</td>
                                                <td data-label="Invited Email Address">${email.invited_email_address_2 }</td>
                                                <td data-label="Invited Email Address">${email.invited_email_address_3 }</td>
                                                <td data-label="Invited Email Address">${email.invited_email_address_4 }</td>
                                                <td data-label="Invited Email Address">${email.invited_email_address_5 }</td>
                                                <td data-label="Invited At">${email.invited_at }</td>
                                                
                                                <!-- re-sent or delete option -->
                                                <td data-label="Action">
                                                    <a href="${pageContext.request.contextPath}/re-send-emails/${email.bulk_email_serial}" class="bt">Re Send</a>
                                                    <a href="${pageContext.request.contextPath}/delete-send-emails/${email.bulk_email_serial}" class="bt">Delete</a>
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