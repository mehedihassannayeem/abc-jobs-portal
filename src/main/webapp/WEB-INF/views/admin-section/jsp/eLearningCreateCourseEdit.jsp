<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Create E-Learning Course</title>

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

                        <form action="edited-course" method="post" class="mt-5">
                        	<input type="hidden" name="ecourse_id" value="${course.ecourse_id }"> 
                        	<input type="hidden" name="joined_by" value="${course.joined_by }"> 
                            <div class="row">
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                        <label for="adminId" class="form-label">Admin Name</label><br>
                                        <select name="admin_name" id="adminId" required>
                                        <option value="${course.admin_name }" class="text-white fs-2 bg-warning" selected>${course.admin_name }</option>
                                            <c:forEach items="${admins }" var="admin">
                                                	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                        <label for="ecImg" class="form-label">E-course Image</label>
                                        <input type="file" class="form-control" id="ecImg" name="ecourse_image"
                                            accept="image/png" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecTitle" class="form-label">E-course Title</label>
                                        <input type="text" class="form-control" id="ecTitle" name="ecourse_title" value="${course.ecourse_title }"
                                            placeholder="HTML" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecHours" class="form-label">Hours Required</label>
                                        <input type="text" class="form-control" id="ecHours" name="hours_required" value="${course.hours_required }"
                                            placeholder="467" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecVideos" class="form-label">Videos</label>
                                        <input type="text" class="form-control" id="ecVideos" name="videos" value="${course.videos }"
                                            placeholder="73" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecQuizzes" class="form-label">Quizzes</label>
                                        <input type="text" class="form-control" id="ecQuizzes" name="quizzes" value="${course.quizzes }"
                                            placeholder="106" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecNotes" class="form-label">Notes</label>
                                        <input type="text" class="form-control" id="ecNotes" name="notes" value="${course.notes }"
                                            placeholder="75" required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecCertificate" class="form-label">Certificate</label>
                                        <input type="text" class="form-control" id="ecCertificate" name="certificate" value="${course.certificate }"
                                            placeholder="yes, no" required>
                                    </div>
                                </div>
                            </div>
                            <button type="submit"
                                class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder d-block m-auto">Update
                                Course</button>
                        </form>

                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>