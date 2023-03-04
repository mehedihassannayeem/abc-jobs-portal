<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<% if ((session.getAttribute("loggedAdmin") == null)) { response.sendRedirect("admin"); } %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <title>${category.category_name }</title>

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
                    
                    	<div class="container w-75 my-5"><p class="text-center fs-1 text-success fw-bolder text-uppercase">${category_msg }</p></div>
						
                        <form action="edit-created-category" method="post" class="my-5 w-100 m-auto">
                        	<input type="hidden" name="job_cat_id" value="${category.job_cat_id }" />
                        	<div class="row">
                                <div class="col-12 col-md-4 my-3">
                                    <div class="mb-3">
                                        <label for="adminId" class="form-label">Admin Name</label><br>                                       
                                        <select name="admin_name" id="adminId" required>
                                        	<option value="${category.admin_name }" class="text-white fs-2 bg-warning" selected>${category.admin_name }</option>
                                            <c:forEach items="${admins }" var="admin">
                                            	<option value="${admin.admin_position } - ${admin.admin_name }">${admin.admin_position } || ${admin.admin_name }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 my-3">
                                     <div class="mb-3">
		                                <label for="catName" class="form-label">Category Name</label>
		                                <input type="text" class="form-control" id="catName" name="category_name" placeholder="Web Development" value="${category.category_name }" required>
                            		</div>
                                </div>
                                 <div class="col-12 col-md-4 my-3">
                                     <div class="mb-3">
		                                <label for="catName" class="form-label">Category Icon</label>
		                                <input type="text" class="form-control" id="catName" name="category_icon" placeholder="fa-solid fa-scale-balanced" value="${category.category_icon }" required>
                            		</div>
                                </div>
                            </div>       
                            <button type="submit"
                                class="btn btn-primary btn-lg backBtn px-5 py-3 fw-bolder d-block m-auto">Edit
                                Category</button>  
                           
                            
                        </form>

                </div>
            </section>


            <script type="text/javascript" src="<c:url value="/resources/admin-section/js/script.js" />" ></script>
    </body>


    </html>