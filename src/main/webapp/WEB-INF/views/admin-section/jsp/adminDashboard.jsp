<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Master Dashboard</title>

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
                                <form action="${pageContext.request.contextPath}/create-admin" method="post">
                                    <div class="mb-5">
                                        <label for="adminPosition" class="form-label">Admin Position</label>
                                        <select name="admin_position" class="text-danger fs-2 fw-bolder">
                                        	<option value="Owner"> Owner</option>
                                        	<option value="CEO"> CEO</option>
                                        	<option value="Developer" selected> Developer</option>
                                        	<option value="Content Manager"> Content Manager</option>
                                        	<option value="Accountant"> Accountant</option>
                                        </select>
                                    </div>
                                    <div class="mb-5">
                                        <label for="adminName" class="form-label">Admin Name</label>
                                        <input type="text" class="form-control" id="adminName" name="admin_name">
                                    </div>
                                    <div class="mb-5">
                                        <label for="adminEmail" class="form-label">Admin Email</label>
                                        <input type="text" class="form-control" id="adminEmail" name="admin_email">
                                    </div>
                                    <div class="mb-5">
                                        <label for="admnPassTemp" class="form-label">Admin Password (temp)</label>
                                        <input type="text" class="form-control" id="admnPassTemp" name="admin_password">
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary btn-lg fs-3">Create Admin</button>
                                    </div>
                                </form>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12 px-4">
                                <p class="tblHeading">Admin Table</p>
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Admin Id</th>
                                            <th>Admin Position</th>
                                            <th>Admin Name</th>
                                            <th>Admin Email</th>
                                            <th>Admin Password</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${admins }" var="admin">
		                                    	<tr>
		                                    		<td data-label="Admin Id">${admin.admin_id }</td>
		                                            <td data-label="Admin Position">${admin.admin_position }</td>
		                                            <td data-label="Admin Name">${admin.admin_name }</td>
		                                            <td data-label="Admin Email">${admin.admin_email }</td>
		                                            <td data-label="Admin Password">${admin.admin_password }</td>
		                                            <td data-label="Action">
		                                                <a href="${pageContext.request.contextPath}/edit-admin/${admin.admin_id}" class="bt">Edit</a>
		                                                <a href="${pageContext.request.contextPath}/delete-admin/${admin.admin_id}" class="bt">Delete</a>
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