<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Create New Course Shift</title>

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
                    
                    	<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${dev_shift_msg }</p></div>
						
                        <form action="${pageContext.request.contextPath}/create-career-dev-course-shift" method="post" class="my-5 w-75 m-auto">
                            <div class="row">
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                        <label for="adminId" class="form-label">Admin Name</label><br>                                       
                                        <select name="admin_name" id="adminId" required>
                                            <c:forEach items="${admins }" var="admin">
                                            	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                <label for="catName" class="form-label">Career Development Course Shift</label>
                                <input type="text" class="form-control" id="catName" name="shift_details" required>
                            </div>
                                </div>
                            </div>
                            <button type="submit"
                                class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder d-block m-auto">Create
                                Course Shift</button>                         
                            
                        </form>
                        
                        <div class="row">
                            <div class="col-12 px-4">
                                <p class="tblHeading">Created Course Shifts</p>
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Course Shift Id</th>
                                            <th>Admin Name</th>
                                            <th>Shift Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${devShifts }" var="shift">
		                                    	<tr>
		                                    		<td data-label="Course Shift Id">${shift.course_shift_id }</td>
		                                            <td data-label="Admin Name">${shift.admin_name }</td>
		                                            <td data-label="Shift Name">${shift.shift_details }</td>
		                                            <td data-label="Action">
		                                                <a href="${pageContext.request.contextPath}/edit-career-dev-course-shift/${shift.course_shift_id}" class="bt">Edit</a>
		                                                <a href="${pageContext.request.contextPath}/delete-career-dev-course-shift/${shift.course_shift_id}" class="bt">Delete</a>
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