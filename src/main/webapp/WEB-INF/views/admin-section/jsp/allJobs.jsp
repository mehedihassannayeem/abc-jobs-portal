<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>View All Jobs</title>

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

						<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${job_msg }</p></div>
                        <p class="tblHeading mt-5">All Jobs</p>
                        <div class="row" style="overflow-x: auto; white-space: nowrap; ">
                            <div class="col-12 px-4">
                                <table class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Job ID</th>
                                            <th>Admin Name</th>
                                            <th>Job Category</th>
                                            <th>Company Name</th>
                                            <th>Company Address</th>
                                            <th>Company Website</th>
                                            <th>Job Title</th>
                                            <th>Job Shift</th>
                                            <th>Salary</th>
                                            <th>Vacancy</th>
                                            <th>Employment Status</th>
                                            <th>Experience</th>
                                            <th>Gender</th>
                                            <th>Age Limits</th>
                                            <th>Job Location</th>
                                            <th>Work Place</th>
                                            <th>Job Description Short</th>
                                            <th>Job Context</th>
                                            <th>Job Responsibilities</th>
                                            <th>Educational Requirements</th>
                                            <th>Experience Requirements</th>
                                            <th>Additional Requirements</th>
                                            <th>Benefits</th>
                                            <th>Job Source</th>
                                            <th>Apply Link</th>
                                            <th>Rating</th>
                                            <th>Publish On</th>
                                            <th>Application Deadline</th>
                                            <th>Job Posted Time</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${jobs }" var="job">
                                            <tr>
                                                <td data-label="Job ID">${job.job_unique_id }</td>
                                                <td data-label="Admin Name">${job.admin_name }</td>
                                                <td data-label="Job Category">${job.job_category }</td>
                                                <td data-label="Company Name">${job.job_com.com_name }</td>
                                                <td data-label="Company Address">${job.job_com.com_address }</td>
                                                <td data-label="Company Website">${job.job_com.com_website }</td>
                                                <td data-label="Job Title">${job.job_title }</td>
                                                <td data-label="Job Shift">${job.job_shift }</td>
                                                <td data-label="Salary">${job.salary }</td>
                                                <td data-label="Vacancy">${job.vacancy }</td>
                                                <td data-label="Employment Status">${job.employment_status }</td>
                                                <td data-label="Experience">${job.experience } years</td>
                                                <td data-label="Gender">${job.gender }</td>
                                                <td data-label="Age Limits">${job.age_limit }</td>
                                                <td data-label="Job Location">${job.job_description.job_location }</td>
                                                <td data-label="Work Place">${job.job_description.work_place }</td>
                                                <td data-label="Job Description Short">${job.job_description.job_description }</td>
                                                <td data-label="Job Context">${job.job_description.job_context }</td>
                                                <td data-label="Job Responsibilities">${job.job_description.job_responsibilities }</td>
                                                <td data-label="Educational Requirements">${job.job_description.educational_requirement }</td>
                                                <td data-label="Experience Requirements">${job.job_description.experience_requirement }</td>
                                                <td data-label="Additional Requirements">${job.job_description.additional_requirement }</td>
                                                <td data-label="Benefits">${job.job_description.benefits }</td>
                                                <td data-label="Job Source">${job.job_description.job_source }</td>
                                                <td data-label="Apply Link">${job.job_description.apply_link }</td>
                                                <td data-label="Rating">${job.rating }</td>
                                                <td data-label="Publish On">${job.publish_on }</td>
                                                <td data-label="Application Deadline">${job.application_deadline }</td>
                                                <td data-label="Job Posted Time">${job.posted_time }</td>
                                                <td data-label="Action">
                                                    <a href="${pageContext.request.contextPath}/edit-job/${job.job_unique_id }" class="bt">Modify</a>
                                                    <a href="${pageContext.request.contextPath}/delete-job/${job.job_unique_id }" class="bt">Delete</a>
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