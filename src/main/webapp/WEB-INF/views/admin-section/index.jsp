<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if (session.getAttribute("loggedAdmin") != null) { response.sendRedirect("admin-homepage"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>Admin Login</title>

        <!-- all necessary links, cdns -->
        <%@ include file="./jsp/required-links.jsp" %>

            <!-- on page css file -->
            <link rel="stylesheet" type="text/css" href="<c:url value="/resources/admin-section/css/index.css" />">

    </head>

    <body class="d-flex justify-content-center align-items-center text-center">

        <div class="container">
            <h1>ABC Jobs Portal</h1>
            <p>If you are one of the Admin, Please login</p>

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary px-5 btn-lg" data-bs-toggle="modal"
                data-bs-target="#adminLogin">
                Login
            </button>

            <!-- Modal -->
            <div class="modal fade" id="adminLogin" data-bs-backdrop="static" tabindex="-1"
                aria-labelledby="adminLoginLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title errMsg" id="adminLoginLabel">Login Credentials Please...</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="admin-homepage" method="post" class="text-start p-0 m-0">
                                <div class="mb-3">
                                    <label for="adminEmail" class="form-label">Email address</label>
                                    <input type="email" class="form-control" name="admin_email" id="adminEmail" required>
                                </div>
                                <div class="mb-3">
                                    <label for="adminPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control" name="admin_password" id="adminPassword"
                                        required>
                                </div>
                                <button type="submit" class="btn btn-primary fs-3">Log In</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
        <script type="text/javascript" src="<c:url value="/resources/admin-section/js/login.js" />" ></script>
    </body>

    </html>