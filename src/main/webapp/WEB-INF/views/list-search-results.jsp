<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page errorPage="error-page.jsp" %>
<% if (session.getAttribute("loggedUserProfile") == null) { response.sendRedirect("login"); } %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">

        <!-- all necessary links, cdns -->
        <%@ include file="./required-links-cdns-log.jsp" %>


            <!-- on page style -->
            <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/list-search-results.css" />">
            <script type="text/javascript" src="<c:url value="/resources/js/list-search-results.js" />"></script>
            
            
           
    </head>

    <body>
        <!-- common header -->
        <%@ include file="./dashNavbar.jsp" %>

            <!-- listing search results page on body content -->
            <c:choose>
			    <c:when test="${userMatched.equals('fieldIsEmpty')}">
			        <img class="d-block m-auto img-fluid" alt="empty field image" src="<c:url value="/resources/images/abc-content/empty-field.png" />">
			    </c:when>
			    <c:when test="${userMatched.equals('noUserFound')}">
			        <img class="d-block m-auto img-fluid" alt="no user found image" src="<c:url value="/resources/images/abc-content/no-user.png" />">
			    </c:when>
			    <c:otherwise>
			        <div class="container my-5 p-5 listSearchResults">
	                <div class="row">
	                    <div class="col-12 col-lg-8">
	                        <div class="pepConct">
	                            <h1 class="mb-5 text-primary fw-bolder bg-light py-2 px-3 rounded">People your are connected</h1>
	                            <!-- looping -->
	                            <ul>
	                            <c:forEach items="${userMatched }" var="user">
	                            	<c:if test="${user.user_connected.equals('yes') }">
	                                <li>
	                                    <div class="card my-4">
	                                        <div class="card-head">
	                                            <div class="row d-flex align-items-center justify-content-center">
	                                                <div class="col-12 col-sm-2 text-center text-sm-start">
	                                                    <img class="p-3" src="<c:url value="/resources/user-contents/${user.profile_image}" />"  alt="${user.up_userPersonalInfo.fullname } image">
	                                                </div>
	                                                <div class="col-12 col-sm-5 text-center text-sm-start  my-2 my-sm-o">
	                                                    <h2>${user.up_userPersonalInfo.fullname}</h2>
	                                                </div>
	                                                <div class="col-12 col-sm-2 text-center my-2 my-sm-o"><i
	                                                        class="fa-solid fa-circle"></i><span>${user.up_userPersonalInfo.active_status}</span>
	                                                </div>
	                                                <div class="col-12 col-sm-3 text-center my-2 my-sm-o"><a href="${pageContext.request.contextPath}/public-profile/${user.username}"
	                                                        class="btn btn-outline-primary">Message</a></div>
	                                            </div>
	                                        </div>
	                                        <div class="card-body">
	                                            <ul>
	                                                <li>
	                                                    <i class="fa-solid fa-2x my-3 me-5 fa-graduation-cap"></i>
	                                                    <span>${user.up_userPersonalInfo.education_status}</span>
	                                                </li>
	                                                <li>
	                                                    <i class="fa-solid fa-2x my-3 me-5 fa-briefcase"></i>
	                                                    <span>${user.up_userPersonalInfo.job_status}</span>
	                                                </li>
	                                                <li>
	                                                    <i class="fa-solid fa-2x my-3 me-5 fa-map-location-dot"></i>
	                                                    <span>${user.up_userAddress.city}, ${user.up_userAddress.country_name}</span>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
	                                </li>
	                                </c:if>
	                                </c:forEach>
	                            </ul>
	                        </div>
	                        <div class="mPep">
	                            <h1 class="mb-5 text-primary fw-bolder bg-light py-2 px-3 rounded">People also know you</h1>
	                            <!-- looping -->
	                            <ul>
	                            <c:forEach items="${userMatched }" var="user">
	                            	<c:if test="${user.user_connected.equals('no') || user.user_connected == null }">
	                                <li>
	                                    <div class="card my-4">
	                                        <div class="row d-flex align-items-center justify-content-center">
	                                            <div class="col-12 col-sm-2 text-centermy-2 my-sm-o">
	                                                <img class="p-3" src="<c:url value="/resources/user-contents/${user.profile_image}" />" alt="${user.up_userPersonalInfo.fullname } image">
	                                            </div>
	                                            <div class="col-12 col-sm-4 text-center text-sm-start  my-2 my-sm-o">
	                                                <h2>${user.up_userPersonalInfo.fullname}</h2>
	                                            </div>
	                                            <div class="col-12 col-sm-2 text-center my-2 my-sm-o">
	                                                <i class="fa-solid my-3 fa-briefcase"></i>
	                                                <span>${user.up_userPersonalInfo.job_status}</span>
	                                            </div>
	                                            <div class="col-12 col-sm-2 text-center my-2 my-sm-o">
	                                                <i class="fa-solid my-3 fa-map-location-dot"></i>
	                                                <span>${user.up_userAddress.country_name}</span>
	                                            </div>
	                                            <div class="col-12 col-sm-2 text-center my-2 my-sm-o"><a href="${pageContext.request.contextPath}/public-profile/${user.username}"
	                                                    class="btn btn-outline-primary stretched-link">Connect</a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </li>
	                                </c:if>
	                                </c:forEach>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="col-12 col-lg-4">
							<c:forEach items="${ads }" var="ad">
                            	<div class="nfAdsCard px-5 py-4 mb-5">
	                                <div>
	                                    <img class="img-fluid adsImage" src="<c:url value="/resources/images/ads/${ad.ads_image }" />"
	                                    alt="${ad.ads_company } image">
	                                </div>
	                                <a href="${ad.ads_link }" target="_blank" rel="noopener noreferrer"
	                                    class="card-link fs-5 text-center text-warning d-block mt-3 wv-100">Learn more</a>
                            	</div>
                        	</c:forEach>
	                    </div>
	                </div>
	            </div>
			    </c:otherwise>
			</c:choose>
      		
            
            
	            
           

            <!-- common footer -->
            <%@ include file="./footer.jsp" %>
    </body>

    </html>