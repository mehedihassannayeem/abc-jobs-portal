<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Sent An Email</title>

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
                    <!-- nav bar -->
                    <%@ include file="./navbar.jsp" %>
						
						<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${email_sent_msg }</p></div>
						
                        <form action="${pageContext.request.contextPath}/invite-new-user" method="post" class="my-5">
                            <div class="row">
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="adminId" class="form-label">Admin Name</label><br>                                       
                                        <select name="admin_name" id="adminId" required>
                                            <c:forEach items="${admins }" var="admin">
                                            	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="invEmail" class="form-label">Recipient One</label>
                                        <input type="email" class="form-control" id="invEmail" name="invited_email_address_1"
                                            placeholder="invite@gmail.com" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="invEmail" class="form-label">Recipient Two</label>
                                        <input type="email" class="form-control" id="invEmail" name="invited_email_address_2"
                                            placeholder="invite@gmail.com" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                            	<div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="invEmail" class="form-label">Recipient Three</label>
                                        <input type="email" class="form-control" id="invEmail" name="invited_email_address_3"
                                            placeholder="invite@gmail.com" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="invEmail" class="form-label">Recipient Four</label>
                                        <input type="email" class="form-control" id="invEmail" name="invited_email_address_4"
                                            placeholder="invite@gmail.com" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="invEmail" class="form-label">Recipient Five</label>
                                        <input type="email" class="form-control" id="invEmail" name="invited_email_address_5"
                                            placeholder="invite@gmail.com" required>
                                    </div>
                                </div>
                            </div>
                            <button type="submit"
                                class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder d-block m-auto">Invite
                                User</button>
                        </form>
                </div>
            </section>



            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>