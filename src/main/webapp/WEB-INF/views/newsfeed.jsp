<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page errorPage="error-page.jsp" %>
        <% if (session.getAttribute("loggedUserProfile")==null) { response.sendRedirect("/AbcJobPortal/login"); } %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">

                <!-- all necessary links, cdns -->
                <%@ include file="./required-links-cdns-log.jsp" %>


                    <!-- on page style -->
                    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/newsfeed.css" />">


                    <title></title>


            </head>

            <body>
                <!-- common header -->
                <%@ include file="./dashNavbar.jsp" %>

                    <!-- page content -->
                    <div class="row mx-3 my-5">
                        <!-- left side container -->
                        <div class="col-12 col-md-4 col-lg-3 my-5 my-md-0">
                            <!-- user profile info for newsfeed section -->
							<%@ include file="./newsfeed-profile.jsp" %>
                        </div>

                        <!-- center container -->
                        <div class="col-12 col-md-8 col-lg-6 my-5 my-md-0">
                            <!-- post posting section -->
                            <div class="newsfeedPostForm px-5 py-4 mb-5">
                                <form action="${pageContext.request.contextPath}/user-newsfeed-post" method="post">
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-2">
                                            <c:if test="${loggedUserProfile.profile_image == null }">
									         	<i class="bi fa-7x bi-person-circle text-primary"></i>
									         </c:if>
									         <c:if test="${loggedUserProfile.profile_image != null}">
									         	<a href="${loggedUserProfile.profile_link }">           					
													<img class="img-fluid d-block  m-auto mb-4 rounded-circle postUserImage" src="<c:url value="/resources/user-contents/${loggedUserProfile.profile_image }" />" alt="${loggedUserProfile.up_userPersonalInfo.fullname } images"/>
												</a>
									         </c:if>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-10">
                                            <div>
                                                <label for="post_title" class="form-label fs-4 fw-bolder">Post
                                                    Title</label>
                                                <input type="text" class="form-control" id="post_title"
                                                    name="post_title" placeholder="type your post title" required>
                                            </div>
                                            <div class="mt-5">
                                                <label for="post_description" class="form-label fs-4 fw-bolder">Post
                                                    Description</label>
                                                <textarea name="post_description" id="post_description"
                                                    placeholder="type your post description" required></textarea>
                                            </div>
                                            <div class="mt-4 d-flex justify-content-around align-items-center">
                                                <p class="btn btn-outline-primary fs-5 fw-bolder"><i
                                                        class="fa-solid fa-video"></i> Go Live</p>
                                                <p class="btn btn-outline-primary fs-5 fw-bolder"><i
                                                        class="fa-solid fa-photo-film"></i> Photo/Video</p>
                                                <p class="btn btn-outline-primary fs-5 fw-bolder"><i
                                                        class="fa-solid fa-icons"></i> Emojis</p>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-center my-3">
                                                <button class="btn btn-lg btn-primary w-25 fs-4 fw-bolder"
                                                    type="submit">Post</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <!-- newsfeed section -->
                            <div class="mb-5 newsfeedSectionContainer p-5">
                            <c:choose>
                                 <c:when test="${allPosts != null}">
	                             	<c:forEach items="${allPosts }" var="post">
	                                    <div class="newsfeedSection px-5 py-4 my-5 rounded-5">
	                                        <div class="row d-flex align-items-center mb-4">
	                                            <div class="col-12 col-sm-2">
	                                            	<a href="${post.user_profile_link }">
	                                                	<img class="img-fluid d-block  m-auto rounded-circle newsUserImage" src="<c:url value="/resources/user-contents/${post.user_image }" />" alt="${post.user_name } images"/>
	                                                </a>
	                                            </div>
	                                            <div class="col-12 col-sm-10">
	                                                <h3 class="mt-4 mb-2 fs-2 fw-bold">${post.user_name }</h3>
	                                                <h4 class="my-2 fw-bold fs-5">${post.user_job_status } -
	                                                    ${post.user_edu_status }</h4>
	                                                <h4 class="fw-bold fs-5">${post.user_city }, ${post.user_country }</h4>
	                                            </div>
	                                        </div>
	                                        <div>
	                                            <h5 class="fs-4 fw-bold my-3">${post.post_title }</h5>
	                                            <p class="fs-4">${post.post_description }</p>
	                                        </div>
	                                        <div
	                                            class="row d-flex align-items-center justify-content-between text-center fs-4">
	                                            <div class="col-12 col-sm-6">
	                                                <div class="row d-flex align-items-center justify-content-between">
	                                                    <div class="col-6"><i class="fa-regular fa-heart text-primary"></i>
	                                                        Like</div>
	                                                    <div class="col-6">
	                                                    <a href="${pageContext.request.contextPath}/user-newsfeed-post-commnets/${post.user_newsfeed_posts_serial}" class="text-dark">                                                    
	                                                    <i class="fa-regular fa-comments text-primary"></i> Comment
	                                                    </a>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0">
	                                                <div class="row d-flex align-items-center justify-content-between">
	                                                    <div class="col-6"><i class="fa-regular fa-flag text-primary"></i>
	                                                        Report</div>
	                                                    <div class="col-6"><i
	                                                            class="fa-regular fa-share-from-square text-primary"></i>
	                                                        Share</div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                             	</c:forEach>
                                 </c:when>
                                 <c:when test="${myPosts != null}">
                                     <c:if test="${myPosts.isEmpty() }" >
                            			<p class="text-primary fs-2 fw-bolder text-center">You don't have any post yet ! Please post first.</p>
                            		</c:if>
	                                <c:forEach items="${myPosts }" var="post">
	                                    <div class="newsfeedSection px-5 py-4 my-5 rounded-5">
	                                        <div class="row d-flex align-items-center mb-4">
	                                            <div class="col-12 col-sm-2">
	                                            	<a href="${post.user_profile_link }">
	                                                	<img class="img-fluid d-block  m-auto rounded-circle newsUserImage" src="<c:url value="/resources/user-contents/${post.user_image }" />" alt="${post.user_name } images"/>
	                                                </a>
	                                            </div>
	                                            <div class="col-12 col-sm-10">
	                                                <h3 class="mt-4 mb-2 fs-2 fw-bold">${post.user_name }</h3>
	                                                <h4 class="my-2 fw-bold fs-5">${post.user_job_status } -
	                                                    ${post.user_edu_status }</h4>
	                                                <h4 class="fw-bold fs-5">${post.user_city }, ${post.user_country }</h4>
	                                            </div>
	                                        </div>
	                                        <div>
	                                            <h5 class="fs-4 fw-bold my-3">${post.post_title }</h5>
	                                            <p class="fs-4">${post.post_description }</p>
	                                        </div>
	                                        <div
	                                            class="row d-flex align-items-center justify-content-between text-center fs-4">
	                                            <div class="col-12 col-sm-6">
	                                                <div class="row d-flex align-items-center justify-content-between">
	                                                    <div class="col-6"><i class="fa-regular fa-heart text-primary"></i>
	                                                        Like</div>
	                                                    <div class="col-6">
	                                                    <a href="${pageContext.request.contextPath}/user-newsfeed-post-commnets/${post.user_newsfeed_posts_serial}" class="text-dark">                                                    
	                                                    <i class="fa-regular fa-comments text-primary"></i> Comment
	                                                    </a>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0">
	                                                <div class="row d-flex align-items-center justify-content-between">
	                                                    <div class="col-6"><i class="fa-regular fa-flag text-primary"></i>
	                                                        Report</div>
	                                                    <div class="col-6"><i
	                                                            class="fa-regular fa-share-from-square text-primary"></i>
	                                                        Share</div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </c:forEach>
                                 </c:when>
                             </c:choose>
                            </div>
                        </div>

                        <!-- right side container -->
                        <div class="col-12 col-md-12 col-lg-3 my-5 my-lg-0">
                        <c:forEach items="${ads }" var="ad">
                            <!-- website ads section -->
							<%@ include file="./websites-ads.jsp" %>
                         </c:forEach>
                        </div>
                    </div>

                    <!-- common footer -->
                    <%@ include file="./footer.jsp" %>
            </body>

            </html>