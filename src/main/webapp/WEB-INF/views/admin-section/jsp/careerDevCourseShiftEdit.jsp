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
                    					
                        <form action="edited-dev-course-shift" method="post" class="my-5 w-75 m-auto">
                        <input type="hidden" value="${devShift.course_shift_id }" name="course_shift_id" />
                        <div class="row">
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                        <label for="adminId" class="form-label">Admin Name</label><br>                                       
                                        <select name="admin_name" id="adminId" required>
                                        	<option value="${devShift.admin_name }" class="text-white fs-2 bg-warning" selected>${devShift.admin_name }</option>
                                            <c:forEach items="${admins }" var="admin">
                                            	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 my-3">
                                   <div class="mb-3">
                                <label for="catName" class="form-label">Career Development Course Shift</label>
                                <input type="text" class="form-control" id="catName" name="shift_details" value="${devShift.shift_details }" required>
                            </div>
                                </div>
                            </div>
                            <button type="submit"
                                class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder d-block m-auto">Update Shift Info</button>                                
                        </form>                     
                        

                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>