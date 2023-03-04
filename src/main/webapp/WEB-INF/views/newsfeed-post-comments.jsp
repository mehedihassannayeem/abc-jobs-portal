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

                            <!-- newsfeed section -->
                            <div class="mb-5 newsfeedSectionContainer p-5">
                                    <div class="newsfeedSection px-5 py-4">
                                        <div class="row d-flex align-items-center mb-4">
                                            <div class="col-12 col-sm-2">
                                            	<a href="${commentPost.user_profile_link }">
                                                	<img class="img-fluid d-block m-auto rounded-circle newsUserImage" src="<c:url value="/resources/user-contents/${commentPost.user_image }" />" alt="${commentPost.user_name } images"/>
                                                </a>
                                            </div>
                                            <div class="col-12 col-sm-10">
                                                <h3 class="mt-4 mb-2 fs-2 fw-bold">${commentPost.user_name }</h3>
                                                <h4 class="my-2 fw-bold fs-5">${commentPost.user_job_status } -
                                                    ${commentPost.user_edu_status }</h4>
                                                <h4 class="fw-bold fs-5">${commentPost.user_city }, ${commentPost.user_country }</h4>
                                            </div>
                                        </div>
                                        <div>
                                            <h5 class="fs-4 fw-bold my-3">${commentPost.post_title }</h5>
                                            <p class="fs-4">${commentPost.post_description }</p>
                                        </div>
                                        <div
                                            class="row d-flex align-items-center justify-content-between text-center fs-4">
                                            <div class="col-12 col-sm-6">
                                                <div class="row d-flex align-items-center justify-content-between">
                                                    <div class="col-6"><i class="fa-regular fa-heart text-primary"></i>
                                                        Like</div>
                                                    <div class="col-6 bg-light py-2 px-3 rounded">
                                                    <a href="${pageContext.request.contextPath}/user-newsfeed-post-commnets/${commentPost.user_newsfeed_posts_serial}" class="text-dark fw-bolder">                                                    
                                                    <i class="fa-regular fa-comments text-primary fw-bolder"></i> Comment
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
                                    
                                    <!-- post comments -->
                                    <div class="newsfeedSection px-5 py-4 mt-3">                                    	
                                   		<c:if test="${postComments.isEmpty() }" >
                                   		<div class="newsfeedSection px-5 py-4 my-5 rounded-4">
		                            		<p class="text-primary fs-2 fw-bolder text-center mb-0">Be the first to comment !!!</p>
		                            	</div>
		                            	</c:if>
		                            	<c:forEach items="${postComments }" var="comment">
                                    		<div class="newsfeedSection px-5 py-4 mb-5 mt-2 rounded-4">
                                    			<div class="row">
                                                    <div class="col-12 col-sm-2 m">
                                                    	<a href="${comment.user_profile_link }">
                                                    	    <img class="border rounded-circle d-block m-auto my-3 my-md-0 d-md-inline m-md-0 commentImage" src="<c:url value="/resources/user-contents/${comment.user_image }" />" alt="${comment.user_name } image"/>
                                                    	</a>
                                                    </div>
                                                    <div class="col-12 col-sm-10 mt-4 mt-sm-0 rounded-4 p-3 bg-light">
                                                    	<p class="fs-4 fw-bold mb-2">${comment.user_name }</p>
                                                        <p class="fs-4 mb-0">${comment.user_commnet }</p>
                                                    </div>
                                                </div>
                                    		</div>
                                    	</c:forEach>
                                    	<hr class="my-5">
                                    	<div class="newsfeedSection px-5 py-4 mb-2 mt-5 rounded-4">
                                    		<form action="${pageContext.request.contextPath}/post-a-comment" method="post">
	                                    		<div class="row d-flex justify-content-between align-items-center">
	                                    			<div class="col-12 col-sm-2">
					                                    <c:if test="${loggedUserProfile.profile_image == null }">
												         	<i class="bi fa-4x bi-person-circle text-primary"></i>
												        </c:if>
												        <c:if test="${loggedUserProfile.profile_image != null}">
												        	<a href="${loggedUserProfile.profile_link }">           					
																<img class="border rounded-circle d-block m-auto my-3 my-md-0 d-md-inline m-md-0 commentImage" src="<c:url value="/resources/user-contents/${loggedUserProfile.profile_image }" />" alt="${loggedUserProfile.up_userPersonalInfo.fullname } images"/>
															</a>
												        </c:if>
	                                    			</div>
                                                    <div class="col-12 col-sm-8 my-4 my-sm-0">
	                                    				<textarea id="userCommentBox" placeholder="Your comments" name="user_commnet"></textarea>
	                                    			</div>
                                                    <div class="col-12 col-sm-2">
	                                    				<input type="submit" class="btn btn-primary fw-bold d-block m-auto" value="Comment">
	                                    			</div>
	                                    		</div>
	                                    		<input type="hidden" value="${commentPost.user_newsfeed_posts_serial }" name="post_id">
                                    		</form>
                                    	</div>
                                    </div>
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

                    <script>
                        $("#userCommentBox").each(function () {
                                this.setAttribute("style", "height:" + (this.scrollHeight) + "px;overflow-y:hidden;");
                            }).on("input", function () {
                                this.style.height = 0;
                                this.style.height = (this.scrollHeight) + "px";
                            });
                    </script>
            </body>

            </html>