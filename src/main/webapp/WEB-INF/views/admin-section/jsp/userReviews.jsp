<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>User Reviews</title>

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

                        <div class="row">
                        <c:choose>
                            <c:when test="${user_rev_msg != null}">
                        		<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${user_rev_msg }</p></div>
                            </c:when>
                            <c:when test="${user_rev_hdn_msg != null}">
                       			 <div class="container w-75 my-5"><p class="text-center fs-1 text-warning fw-bolder text-uppercase">${user_rev_hdn_msg }</p></div>
                            </c:when>
                        </c:choose>
                            <div class="col-12 px-4">
                                <p class="tblHeading mt-5">User Reviews</p>
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