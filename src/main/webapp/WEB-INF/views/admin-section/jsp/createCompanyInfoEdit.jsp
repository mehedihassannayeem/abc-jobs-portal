<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>${company.company_name }</title>

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
						
                        <form action="updated-company" method="post" class="my-5 w-50 m-auto">
                        	<input type="hidden" name="company_id" value="${company.company_id }" />
                        	<div class="mb-3">
                                            <label for="adminId" class="form-label">Admin Name</label><br>
                                            <select name="admin_name" id="adminId" required>
                                            	<option value="${company.admin_name }" class="text-white fs-2 bg-warning" selected>${company.admin_name }</option>
                                                <c:forEach items="${admins }" var="admin">
                                                	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                            <div class="mb-3">
                                <label for="company_name" class="form-label">Company Name</label>
                                <input type="text" class="form-control" id="company_name" name="company_name" value="${company.company_name }" required>
                            </div>
                            <div class="mb-3">
                                <label for="company_address" class="form-label">Company Address</label>
                                <input type="text" class="form-control" id="company_address" name="company_address" value="${company.company_address }" required>
                            </div>
                            <div class="mb-3">
                                <label for="company_website" class="form-label">Company Website Address</label>
                                <input type="text" class="form-control" id="company_website" name="company_website" value="${company.company_website }" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder">Update
                                Company Info</button>
                        </form>                     
                       

                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>