<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>Create A Job</title>

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


                        <form action="${pageContext.request.contextPath}/create-new-job" method="post" class="mt-5">
                            <div class="firstForm">
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
                                            <label for="jobCat" class="form-label">Job Category</label><br>
                                            <select name="job_category" id="jobCat" required>
                                               <c:forEach items="${categories }" var="category">
                                                	<option value="${category.category_name }">${category.category_name }</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="jobCom" class="form-label">Company Info</label><br>
                                            <select name="company_info" id="jobCom" required>
                                            	<c:forEach items="${companies }" var="company">                                                	
                                                	<option value="${company.company_id }">${company.company_name }</option>                                                	
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row my-5">
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="jobTitle" class="form-label">Job Title</label>
                                            <input type="text" class="form-control" id="jobTitle" name="job_title"
                                                placeholder="web developer" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="jobShift" class="form-label">Job Shift</label>
                                            <input type="text" class="form-control" id="jobShift" name="job_shift"
                                                placeholder="day-shift" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="salary" class="form-label">Salary</label>
                                            <input type="text" class="form-control" id="salary" name="salary"
                                                placeholder="55000.00" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="vacancy" class="form-label">Vacancy</label>
                                            <input type="text" class="form-control" id="vacancy" name="vacancy"
                                                placeholder="15" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="empStatus" class="form-label">Employment Status</label>
                                            <input type="text" class="form-control" id="empStatus" name="employment_status"
                                                placeholder="part-time" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="experience" class="form-label">Experience</label>
                                            <input type="text" class="form-control" id="experience" name="experience"
                                                placeholder="6-8 years/months, no experience required" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row my-5">
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="gender" class="form-label">Gender</label>
                                            <input type="text" class="form-control" id="gender" name="gender"
                                                placeholder="male, female, male & female both" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="ageLim" class="form-label">Age Limits</label>
                                            <input type="text" class="form-control" id="ageLim" name="age_limit"
                                                placeholder="below 45 years" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="jobLoc" class="form-label">Job Location</label>
                                            <input type="text" class="form-control" id="jobLoc" name="job_description.job_location"
                                                placeholder="5/4/a, Bangladesh" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row my-5">
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="workPlace" class="form-label">Work Place</label>
                                            <input type="text" class="form-control" id="workPlace" name="job_description.work_place"
                                                placeholder="remotely, at office, on field" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="publishOn" class="form-label">Publish On</label>
                                            <input type="text" class="form-control" id="publishOn" name="publish_on"
                                                placeholder="15 July, 2022" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="deadline" class="form-label">Application Deadline</label>
                                            <input type="text" class="form-control" id="deadline" name="application_deadline"
                                                placeholder="25 July, 2022" required>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="secondForm mt-5 formToggle">
                                <div class="row">
                                    <div class="col-12 col-md-6 my-3">
                                        <div class="mb-3">
                                            <label for="appLink" class="form-label">Apply Link</label>
                                            <input type="text" class="form-control" id="appLink" name="job_description.apply_link"
                                                placeholder="external apply link" required>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 my-3">
                                        <div class="mb-3">
                                            <label for="jobSource" class="form-label">Job Source</label>
                                            <input type="text" class="form-control" id="jobSource" name="job_description.job_source"
                                                placeholder="abc company website" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row my-5">
                                    <div class="col-12 my-3">
                                        <div class="mb-3">
                                            <label for="jobShortDesc" class="form-label">Job Description
                                                Short</label><br>
                                            <textarea name="job_description.job_description" id="jobShortDesc" placeholder="write in short"
                                                required></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="jobContext" class="form-label">Job Context</label><br>
                                            <textarea name="job_description.job_context" id="jobContext" placeholder="write in berif"
                                                required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="jobResponsibilities" class="form-label">Job
                                                Responsibilities</label><br>
                                            <textarea name="job_description.job_responsibilities" id="jobResponsibilities"
                                                placeholder="write in berif" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="educationalReq" class="form-label">Educational
                                                Requirements</label><br>
                                            <textarea name="job_description.educational_requirement" id="educationalReq"
                                                placeholder="write in berif" required></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row my-5">
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="experienceReq" class="form-label">Experience
                                                Requirements</label><br>
                                            <textarea name="job_description.experience_requirement" id="experienceReq"
                                                placeholder="write in berif" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="additionalReq" class="form-label">Additional
                                                Requirements</label><br>
                                            <textarea name="job_description.additional_requirement" id="additionalReq"
                                                placeholder="write in berif" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 my-3">
                                        <div class="mb-3">
                                            <label for="benefits" class="form-label">Benefits</label><br>
                                            <textarea name="job_description.benefits" id="benefits" placeholder="write in berif"
                                                required></textarea>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit"
                                    class="btn btn-success btn-lg px-5 py-3 m-auto d-block fw-bold">Create
                                    New
                                    Job</button>
                            </div>
                        </form>
                        <div class="d-flex align-items-center justify-content-center mt-5">
                            <button class="btn btn-primary btn-lg nextBtn px-5 py-3">Next</button>
                            <button class="btn btn-warning btn-lg backBtn px-5 py-3 formToggle">Back</button>
                        </div>
                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>