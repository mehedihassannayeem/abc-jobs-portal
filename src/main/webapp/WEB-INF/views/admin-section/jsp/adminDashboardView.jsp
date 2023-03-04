<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Dashboard</title>

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
                                <form action="" method="post">
                                	<input type="hidden" name="admin_id" value="${loggedAdmin.admin_id }" />
                                	<input type="hidden" name="admin_image" value="${loggedAdmin.admin_image }" />
                                    <div class="mb-5">
                                        <img src="<c:url value="/resources/admin-section/images/${loggedAdmin.admin_image }" />" alt="${loggedAdmin.admin_name } image">
                                    </div>
                                    <div class="mb-5">
                                        <label for="adminPosition" class="form-label">Admin Position</label>
                                        <input type="text" class="form-control bg-light" id="adminPosition" name="admin_position" value="${loggedAdmin.admin_position }"
                                             readonly>
                                    </div>
                                    <div class="mb-5">
                                        <label for="adminName" class="form-label">Admin Name</label>
                                        <input type="text" class="form-control bg-light" id="adminName" name="admin_name"
                                            value="${loggedAdmin.admin_name }" readonly>
                                    </div>
                                    <div class="mb-5">
                                        <label for="adminEmail" class="form-label">Admin Email</label>
                                        <input type="text" class="form-control bg-light" id="adminEmail" name="admin_email"
                                            value="${loggedAdmin.admin_email }" readonly>
                                    </div>
                                    <div class="mb-5">
                                        <label for="admnPassOld" class="form-label">Admin Password (old)</label>
                                        <input type="text" class="form-control" id="admnPassOld" name="admnPassOld"
                                            required>
                                    </div>
                                    <div class="mb-5">
                                        <label for="admnPassNew" class="form-label">Admin Password (new)</label>
                                        <input type="text" class="form-control" id="admnPassNew" name="admnPassNew"
                                            required>
                                    </div>
                                    <div class="mb-5">
                                        <label for="admnPassCon" class="form-label">Admin Password (confirm)</label>
                                        <input type="text" class="form-control" id="admnPassCon" name="admnPassCon"
                                            required>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary btn-lg fs-3">Update Info</button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        
                        <div class="container w-75 my-5 masErrMsg" id="masErrMsg">
                            <p class="errMsg" id="errMsg">If you are a master admin, only then try to login !!!</p>
                            <form action="master-dashboard" method="post" autocomplete="off">
                                <div class="mb-3">
                                    <label for="masterEmail" class="form-label">Master Identity</label>
                                    <input type="email" class="form-control text-white" id="masterEmail" name="admin_email">
                                </div>
                                <div class="mb-3">
                                    <label for="masterPass" class="form-label">Master Password</label>
                                    <input type="password" class="form-control text-white" id="masterPass" name="admin_password">
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg px-5 py-3">Master Login</button>
                            </form>
                        </div>


                        <div class="row">
                            <div class="col-12 px-4">
                                <p class="tblHeading">Other Admins</p>
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Admin Position</th>
                                            <th>Admin Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${admins }" var="admin">
	                                    	<tr>
	                                            <td data-label="Admin Position">${admin.admin_position }</td>
	                                            <td data-label="Admin Name">${admin.admin_name }</td>
	                                            <td data-label="Action">
	                                                <a href="#" class="bt">Message</a>
	                                            </td>
                                        	</tr>  
	                                    </c:forEach>                                                                              
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
            </section>
            
            
            <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
            
        	<script type="text/javascript" src="<c:url value="/resources/admin-section/js/master.js" />" ></script>        	
    </body>


    </html>