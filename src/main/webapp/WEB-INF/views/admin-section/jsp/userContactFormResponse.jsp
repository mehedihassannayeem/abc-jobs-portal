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

                        <form action="responsed" method="post" class="mt-5">
                        	<input type="hidden" name="contact_form_query_id" value="${contactForm.contact_form_query_id }"> 
                            <div class="row">
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                        <label for="adminId" class="form-label">Response Taken By</label><br>
                                        <select name="response_taken_by" id="adminId" required>
                                        <option value="${contactForm.response_taken_by }" class="text-white fs-2 bg-warning" selected>${contactForm.response_taken_by }</option>
                                            <c:forEach items="${admins }" var="admin">
                                                	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                        <label for="ecImg" class="form-label">Response Id</label>
                                        <c:if test="${contactForm.response_id == null }"> <input type="text" class="form-control" id="ecImg" name="response_id" value="UCF-AD-RES-ID - " required></c:if>
                                        <c:if test="${contactForm.response_id != null }"> <input type="text" class="form-control" id="ecImg" name="response_id" value="${contactForm.response_id }" required></c:if>                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecTitle" class="form-label">Queried For</label>
                                        <input type="text" class="form-control bg-warning" id="ecTitle" name="querying_for" value="${contactForm.querying_for }"
                                            placeholder="HTML" readonly required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecHours" class="form-label">Queried By</label>
                                        <input type="text" class="form-control bg-warning" id="ecHours" name="user_name" value="${contactForm.user_name }"
                                            placeholder="467" readonly required>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="ecVideos" class="form-label">Queried Email</label>
                                        <input type="text" class="form-control bg-warning" id="ecVideos" name="user_email" value="${contactForm.user_email }"
                                            placeholder="73" readonly required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                            <label for="jobShortDesc" class="form-label">User Queries
                                                Short</label><br>
                                            <textarea class="bg-warning" name="user_query" id="jobShortDesc" readonly
                                                required>${contactForm.user_query }</textarea>
                                        </div>
                                </div>
                                <div class="col-12 col-md-6 my-3">
                                    <div class="mb-3">
                                            <label for="jobShortDesc" class="form-label">Your Response</label><br>
                                            <textarea name="response" id="jobShortDesc" placeholder="write down what you would like to response to the user through email"
                                                required>${contactForm.response }</textarea>
                                        </div>
                                </div>                                
                            </div>
                            <button type="submit"
                                class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder d-block m-auto">Response To The Query</button>
                        </form>

                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>