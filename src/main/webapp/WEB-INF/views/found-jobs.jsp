<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page errorPage="error-page.jsp" %>
        <% if (session.getAttribute("loggedUserProfile") !=null) { response.sendRedirect("homepage"); } %>
            <!DOCTYPE html>
            <html>

            <head>
                <!-- all necessary links, cdns -->
                <%@ include file="./required-links-cdns.jsp" %>

                    <!-- on page style -->
                    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
                    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/homebody.css" />">
                    <script type="text/javascript" src="<c:url value="/resources/js/homebody.js" />"></script>
            </head>

            <body>
                <!-- common header -->
                <%@ include file="./header.jsp" %>


                    <!-- job feeds and search resutls section -->
                    <div class="container-fluid JobFeedRecentSearch my-5 p-5">
                        <div class="row" id="tabs">


                            <!-- job feeds section -->
                            <div id="jobFeedsTab">
                                <div class="container jobFeeds my-5 py-5">
                                    <div class="row m-auto">                                       
                                        <div class="col-12 leftSide">
                                            <ul>
                                            <c:choose>         
										         <c:when test = "${foundJobs != null}">
										            <c:if test="${foundJobs.isEmpty() }">
                                            			<p class="text-primary text-center fs-1 fw-bolder my-5">No Job Found. Please search with something others...</p>                                            	
                                            		</c:if>
	                                                <c:forEach items="${foundJobs }" var="jobs">
	                                                    <li class="mb-5 w-75 m-auto">
	                                                        <div class="card py-3 px-4">
	                                                            <div class="card-head">
	                                                                <div
	                                                                    class="d-flex justify-content-between align-items-center">
	                                                                    <h2>${jobs.job_title }</h2>
	                                                                    <div class="moreSec">
	
	                                                                        <!-- this i will be the tigger for showing more option, pass with id to delete -->
	                                                                        <i class="fa-solid fa-3x fa-ellipsis-vertical"
	                                                                            id="moreSecDot"></i>
	
	                                                                        <!-- this is the more option, response on click -->
	                                                                        <ul class="moreSecOpt">
	                                                                            <li>
	                                                                                <a
	                                                                                    href="${pageContext.request.contextPath}/apply-job-link/${jobs.job_unique_id }">
	                                                                                    <i
	                                                                                        class="fa-solid fa-paper-plane"></i>
	                                                                                    Apply Now
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <a
	                                                                                    href="${jobs.job_description.apply_link }">
	                                                                                    <i
	                                                                                        class="fa-solid fa-share-from-square"></i>
	                                                                                    Apply on their site
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <a href="">
	                                                                                    <i
	                                                                                        class="fa-solid fa-share-from-square"></i>
	                                                                                    Save Job
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <!-- this is the icon for deleting the jobs from feeds, with the help of id -->
	                                                                                <a href="">
	                                                                                    <i class="fa-solid fa-ban"></i> Not
	                                                                                    Interested
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <a href="">
	                                                                                    <i class="fa-solid fa-flag"></i>
	                                                                                    Report Job
	                                                                                </a>
	                                                                            </li>
	                                                                        </ul>
	                                                                    </div>
	                                                                </div>
	                                                                <h3>${jobs.job_com.com_name }</h3>
	                                                                <div></div>
	                                                                <h4>${jobs.job_com.com_address }</h4>
	                                                                <div>
	                                                                    <button
	                                                                        class="btn btn-outline-primary btn-lg mx-4">${jobs.employment_status
	                                                                        }</button>
	                                                                    <button
	                                                                        class="btn btn-outline-primary btn-lg mx-4">${jobs.job_shift
	                                                                        }</button>
	                                                                    <button class="btn btn-outline-primary btn-lg mx-4">
	                                                                        <i class="bi bi-currency-dollar"></i>
	                                                                        ${jobs.salary }
	                                                                    </button>
	                                                                </div>
	                                                                <hr>
	                                                            </div>
	                                                            <div class="card-body">
	                                                                <p>${jobs.job_description.job_description }</p>                                                                
	                                                                    <a href="${pageContext.request.contextPath}/apply-job-link/${jobs.job_unique_id }" class="stretched-link"></a>
	                                                            </div>
	                                                            <div class="card-footer">posted on - ${jobs.posted_time }
	                                                            </div>
	                                                        </div>
	                                                    </li>
	                                                </c:forEach>
										         </c:when>										         
										         <c:when test = "${catJobs != null}">
										            <c:if test="${catJobs.isEmpty() }">
                                            			<p class="text-primary text-center fs-1 fw-bolder my-5">No job yet for this category. Please search with something others...</p>                                            	
                                            		</c:if>
	                                                <c:forEach items="${catJobs }" var="jobs">
	                                                    <li class="mb-5 w-75 m-auto">
	                                                        <div class="card py-3 px-4">
	                                                            <div class="card-head">
	                                                                <div
	                                                                    class="d-flex justify-content-between align-items-center">
	                                                                    <h2>${jobs.job_title }</h2>
	                                                                    <div class="moreSec">
	
	                                                                        <!-- this i will be the tigger for showing more option, pass with id to delete -->
	                                                                        <i class="fa-solid fa-3x fa-ellipsis-vertical"
	                                                                            id="moreSecDot"></i>
	
	                                                                        <!-- this is the more option, response on click -->
	                                                                        <ul class="moreSecOpt">
	                                                                            <li>
	                                                                                <a
	                                                                                    href="${pageContext.request.contextPath}/apply-job-link/${jobs.job_unique_id }">
	                                                                                    <i
	                                                                                        class="fa-solid fa-paper-plane"></i>
	                                                                                    Apply Now
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <a
	                                                                                    href="${jobs.job_description.apply_link }">
	                                                                                    <i
	                                                                                        class="fa-solid fa-share-from-square"></i>
	                                                                                    Apply on their site
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <a href="">
	                                                                                    <i
	                                                                                        class="fa-solid fa-share-from-square"></i>
	                                                                                    Save Job
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <!-- this is the icon for deleting the jobs from feeds, with the help of id -->
	                                                                                <a href="">
	                                                                                    <i class="fa-solid fa-ban"></i> Not
	                                                                                    Interested
	                                                                                </a>
	                                                                            </li>
	                                                                            <li>
	                                                                                <a href="">
	                                                                                    <i class="fa-solid fa-flag"></i>
	                                                                                    Report Job
	                                                                                </a>
	                                                                            </li>
	                                                                        </ul>
	                                                                    </div>
	                                                                </div>
	                                                                <h3>${jobs.job_com.com_name }</h3>
	                                                                <div></div>
	                                                                <h4>${jobs.job_com.com_address }</h4>
	                                                                <div>
	                                                                    <button
	                                                                        class="btn btn-outline-primary btn-lg mx-4">${jobs.employment_status
	                                                                        }</button>
	                                                                    <button
	                                                                        class="btn btn-outline-primary btn-lg mx-4">${jobs.job_shift
	                                                                        }</button>
	                                                                    <button class="btn btn-outline-primary btn-lg mx-4">
	                                                                        <i class="bi bi-currency-dollar"></i>
	                                                                        ${jobs.salary }
	                                                                    </button>
	                                                                </div>
	                                                                <hr>
	                                                            </div>
	                                                            <div class="card-body">
	                                                                <p>${jobs.job_description.job_description }</p>                                                                
	                                                                    <a href="${pageContext.request.contextPath}/apply-job-link/${jobs.job_unique_id }" class="stretched-link"></a>
	                                                            </div>
	                                                            <div class="card-footer">posted on - ${jobs.posted_time }
	                                                            </div>
	                                                        </div>
	                                                    </li>
	                                                </c:forEach>
										         </c:when>
										      </c:choose>                                            
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- common footer -->
                    <%@ include file="./footer.jsp" %>
            </body>

            </html>