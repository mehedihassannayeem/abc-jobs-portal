<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Create Career Dev Course</title>

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

						

                        <form action="${pageContext.request.contextPath}/create-career-dev-course" method="post" class="mt-5">
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
                                        <label for="courseShift" class="form-label">Course Shift</label><br>
                                        <select name="course_shift" id="courseShift" required>
                                           <c:forEach items="${shifts }" var="shift">
                                                	<option value="${shift.course_shift_id }">${shift.shift_details }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="cdcImg" class="form-label">Career Dev Course Image</label>
                                        <input type="file" class="form-control" id="cdcImg" name="course_image"
                                            accept="image/png" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="cdcTitle" class="form-label">Career Dev Course Title</label>
                                        <input type="text" class="form-control" id="cdcTitle" name="course_title"
                                            placeholder="JavaScript" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="cdcDate" class="form-label">Course Date</label>
                                        <input type="text" class="form-control" id="cdcDate" name="course_date"
                                            placeholder="09 November, 2022" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="cdcSchedule" class="form-label">Course Schedule</label>
                                        <input type="text" class="form-control" id="cdcSchedule" name="course_schedule"
                                            placeholder="8 am to 11 am" required>
                                    </div>
                                </div>
                            </div>
                            <button type="submit"
                                class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder d-block m-auto">Create
                                Course</button>
                        </form>


                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>