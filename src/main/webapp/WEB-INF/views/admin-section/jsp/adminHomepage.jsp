<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
        <!DOCTYPE html>
        <html lang="en">

        <head>

            <title>Homepage</title>

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

                            <!-- highlights section -->
                            <div class="row my-5">
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>jobs</div>
                                            <div><i class="fa-solid fa-chevron-up"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3 fs-1">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-business-time"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>bulk emails</div>
                                            <div><i class="fa-solid fa-chevron-down"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3 fs-1">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-envelope-circle-check"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>e-learing</div>
                                            <div><i class="fa-solid fa-chevron-down"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3 fs-1">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-chalkboard-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>Career Dev</div>
                                            <div><i class="fa-solid fa-chevron-up"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3 fs-1">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-house-laptop"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>users</div>
                                            <div><i class="fa-solid fa-chevron-down"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3 fs-1">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-users"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>contact form</div>
                                            <div><i class="fa-solid fa-chevron-up"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3 fs-1">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-user-tie"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>user review</div>
                                            <div><i class="fa-solid fa-chevron-down"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-address-card"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-3">
                                    <div class="cusCard">
                                        <div class="cusCard-head p-3 d-flex justify-content-between">
                                            <div>inactive users</div>
                                            <div><i class="fa-solid fa-chevron-up"></i> 5%
                                            </div>
                                        </div>
                                        <div class="cusCard-body p-3 fs-1">
                                            <span>772</span>
                                        </div>
                                        <div class="cusCard-footer p-3 d-flex justify-content-between">
                                            <div>view details</div>
                                            <div>
                                                <i class="fa-solid fa-users-slash"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- chart section -->
                            <div class="row mt-5">
                                <div class="col-12 col-lg-4">
                                    <div id="piechart" class="chart"></div>
                                </div>
                                <div class="col-12 col-lg-4">
                                    <div id="piechart_3d" class="chart"></div>
                                </div>
                                <div class="col-12 col-lg-4">
                                    <div id="donutchart" class="chart"></div>
                                </div>
                            </div>


                            <!-- contact form section -->
                            <div class="row" id="userContactForm">
                                <div class="col-12 px-4">
                                    <p class="tblHeading">Contact Form</p>
                                    <table class="tbl">
                                        <thead>
                                            <tr>
                                                <th>Query Sl No</th>
                                                <th>Query Type</th>
                                                <th>User Name</th>
                                                <th>User Email</th>
                                                <th>User Queries</th>
                                                <th>Response Taken By</th>
                                                <th>Response Taken On</th>
                                                <th>Response Id</th>
                                                <th>Response</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach items="${contactForms }" var="contactForm">
                                                <tr>
                                                    <td data-label="Query Sl No">${contactForm.contact_form_query_id }
                                                    </td>
                                                    <td data-label="Query Type">${contactForm.querying_for }</td>
                                                    <td data-label="User Name">${contactForm.user_name }</td>
                                                    <td data-label="User Email">${contactForm.user_email }</td>
                                                    <td data-label="User Queries">${contactForm.user_query }</td>
                                                    <td data-label="Response Taken By">${contactForm.response_taken_by }
                                                    </td>
                                                    <td data-label="Response Taken On">${contactForm.response_taken_on }
                                                    </td>
                                                    <td data-label="Response Id">${contactForm.response_id }</td>
                                                    <td data-label="Response">${contactForm.response }</td>
                                                    <td data-label="Action">
                                                        <a href="${pageContext.request.contextPath}/response-user-query/${contactForm.contact_form_query_id }"
                                                            class="bt">Response</a>
                                                        <a href="${pageContext.request.contextPath}/delete-user-query/${contactForm.contact_form_query_id }"
                                                            class="bt">Remove</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>



                            <!-- user review section -->
                            <div class="row">
                                <div class="col-12 px-4">
                                    <p class="tblHeading">User Reviews</p>
                                    <table class="tbl">
                                        <thead>
                                            <tr>
                                                <th>Review Sl No</th>
                                                <th>User Id</th>
                                                <th>User Name</th>
                                                <th>User Review</th>
                                                <th>Displaying Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${userReviews }" var="review">
                                                <tr>
                                                    <td data-label="Review Sl No">${review.user_reviews_serial }</td>
                                                    <td data-label="User Id">${review.user_id }</td>
                                                    <td data-label="User Name">${review.user_name }</td>
                                                    <td data-label="User Review">${review.user_review }</td>
                                                    <td data-label="User Review">${review.user_review_display }</td>
                                                    <td data-label="Action">
                                                        <a href="${pageContext.request.contextPath}/user-review-show/${review.user_reviews_serial }" class="bt">Show</a>
                                                        <a href="${pageContext.request.contextPath}/user-review-delete/${review.user_reviews_serial }" class="bt">Delete</a>
                                                        <a href="${pageContext.request.contextPath}/user-review-hide/${review.user_reviews_serial }" class="bt bg-warning">Hide</a>
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