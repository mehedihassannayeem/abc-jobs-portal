<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>View Career Dev Course</title>

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
                    	
                    	<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${carDev_msg }</p></div>

                        <div class="row">
                            <div class="col-12 px-4">
                                <p class="tblHeading mt-5">Career Development Courses</p>
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Career Dev Course Id</th>
                                            <th>Admin Name</th>
                                            <th>Course Shift</th>
                                            <th>Career Dev Course Title</th>
                                            <th>Career Dev Course Image</th>
                                            <th>Course Date</th>
                                            <th>Class Schedule</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${careerDevCourses }" var="careerDevCourse">
                                            <tr>
                                                <td data-label="Career Dev Course Id">${careerDevCourse.career_dev_con_id }</td>
                                                <td data-label="Admin Name">${careerDevCourse.admin_name }</td>
                                                <td data-label="Course Shift">${careerDevCourse.course_shift }</td>
                                                <td data-label="Career Dev Course Title">${careerDevCourse.course_title }</td>
                                                <td data-label="Career Dev Course Image">
                                                    ${careerDevCourse.course_image }
                                                </td>
                                                <td data-label="Course Date">${careerDevCourse.course_date }</td>
                                                <td data-label="Class Schedule">${careerDevCourse.course_schedule }</td>
                                                <td data-label="Action">
                                                    <a href="${pageContext.request.contextPath}/edit-career-dev-course/${careerDevCourse.career_dev_con_id }" class="bt">Modify</a>
                                                    <a href="${pageContext.request.contextPath}/delete-career-dev-course/${careerDevCourse.career_dev_con_id }" class="bt">Delete</a>
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