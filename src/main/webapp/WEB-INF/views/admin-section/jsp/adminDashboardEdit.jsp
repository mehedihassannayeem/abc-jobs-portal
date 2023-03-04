<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>${admin.admin_name } | ${admin.admin_position }</title>

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

                        <div class="container-fluid w-75">
                            <div class="row mt-5">
                            <div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${admin_creted_msg }</p></div>
                                <form action="edited-admin-info" method="post">
                                	<input type="hidden" value="${admin.admin_id }" name="admin_id" />
                                    <div class="mb-5">
                                        <label for="adminPosition" class="form-label">Admin Position</label>
                                        <select name="admin_position" class="text-danger fs-2 fw-bolder">
                                        	<option value="${admin.admin_position }" selected> ${admin.admin_position }</option>
                                        	<option value="Owner"> Owner</option>
                                        	<option value="CEO"> CEO</option>
                                        	<option value="Developer"> Developer</option>
                                        	<option value="Content Manager"> Content Manager</option>
                                        	<option value="Accountant"> Accountant</option>
                                        </select>
                                    </div>
                                    <div class="mb-5">
                                        <label for="adminName" class="form-label">Admin Name</label>
                                        <input type="text" class="form-control" id="adminName" name="admin_name" value="${admin.admin_name }">
                                    </div>
                                    <div class="mb-5">
                                        <label for="adminEmail" class="form-label">Admin Email</label>
                                        <input type="text" class="form-control" id="adminEmail" name="admin_email" value="${admin.admin_email }">
                                    </div>
                                    <div class="mb-5">
                                        <label for="admnPassTemp" class="form-label">Admin Password</label>
                                        <input type="text" class="form-control" id="admnPassTemp" name="admin_password" value="${admin.admin_password }">
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary btn-lg fs-3">Update Info</button>
                                    </div>
                                </form>
                            </div>
                        </div>                        
                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>