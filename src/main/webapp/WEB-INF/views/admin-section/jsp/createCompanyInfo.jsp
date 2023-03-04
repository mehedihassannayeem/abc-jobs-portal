<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Register A Company</title>

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
                    
                    	<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${company_msg }</p></div>
						
                        <form action="${pageContext.request.contextPath}/register-new-company" method="post" class="my-5 w-50 m-auto">  
                        	
                        	<div class="mb-3">
                                            <label for="adminId" class="form-label">Admin Name</label><br>
                                            <select name="admin_name" id="adminId" required>
                                                <c:forEach items="${admins }" var="admin">
                                                	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                                </c:forEach>
                                            </select>
                                        </div>                        	
                            <div class="mb-3">
                                <label for="company_name" class="form-label">Company Name</label>
                                <input type="text" class="form-control" id="company_name" name="company_name" required>
                            </div>
                            <div class="mb-3">
                                <label for="company_address" class="form-label">Company Address</label>
                                <input type="text" class="form-control" id="company_address" name="company_address" required>
                            </div>
                            <div class="mb-3">
                                <label for="company_website" class="form-label">Company Website Address</label>
                                <input type="text" class="form-control" id="company_website" name="company_website" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder">Register
                                Company</button>
                        </form>
                        
                        <div class="row">
                            <div class="col-12 px-4">
                                <p class="tblHeading">Registered Company</p>
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Company Id</th>
                                            <th>Admin Name</th>
                                            <th>Company Name</th>
                                            <th>Company Address</th>
                                            <th>Company Website Address</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${companies }" var="company">
		                                    	<tr>
		                                    		<td data-label="Company Id">${company.company_id }</td>
		                                            <td data-label="Admin Name">${company.admin_name }</td>
		                                            <td data-label="Company Name">${company.company_name }</td>
		                                            <td data-label="Company Address">${company.company_address }</td>
		                                            <td data-label="Company Website Address">${company.company_website }</td>
		                                            <td data-label="Action">
		                                                <a href="${pageContext.request.contextPath}/edit-company/${company.company_id}" class="bt">Edit</a>
		                                                <a href="${pageContext.request.contextPath}/delete-company/${company.company_id}" class="bt">Delete</a>
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