<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>View E-Learning Course</title>

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

						<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${elearn_msg }</p></div>
                        <div class="row">
                            <div class="col-12 px-4">
                                <p class="tblHeading mt-5">E-Learning Courses</p>
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>E-course Id</th>
                                            <th>Admin Name</th>
                                            <th>E-course Title</th>
                                            <th>E-course Image</th>
                                            <th>Joined By</th>
                                            <th>Hours Required</th>
                                            <th>Videos</th>
                                            <th>Quizzes</th>
                                            <th>Notes</th>
                                            <th>Certificate</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       	 <c:forEach items="${elearnCourses }" var="elearnCourse">
                                       	 	<tr>
                                                <td data-label="E-course Id">${elearnCourse.ecourse_id }</td>
                                                <td data-label="Admin Name">${elearnCourse.admin_name }</td>
                                                <td data-label="E-course Title">${elearnCourse.ecourse_title }</td>
                                                <td data-label="E-course Image">
                                                    ${elearnCourse.ecourse_image }
                                                </td>
                                                <td data-label="Joined By">${elearnCourse.joined_by }</td>
                                                <td data-label="Hours Required">${elearnCourse.hours_required }</td>
                                                <td data-label="Videos">${elearnCourse.videos }</td>
                                                <td data-label="Quizzes">${elearnCourse.quizzes }</td>
                                                <td data-label="Notes">${elearnCourse.notes }</td>
                                                <td data-label="Certificate">${elearnCourse.certificate }</td>
                                                <td data-label="Action">
                                                    <a href="${pageContext.request.contextPath}/edit-elearn-course/${elearnCourse.ecourse_id }" class="bt">Modify</a>
                                                    <a href="${pageContext.request.contextPath}/delete-elearn-course/${elearnCourse.ecourse_id }" class="bt">Delete</a>
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