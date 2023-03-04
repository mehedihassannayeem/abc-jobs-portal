<!-- newsfeed profile section -->
<div class="nfProCard px-5 py-4">
    <div class="d-flex justify-content-center align-items-center">
         <c:if test="${loggedUserProfile.profile_image == null }">
         	<i class="bi fa-10x bi-person-circle"></i>
         </c:if>
         <c:if test="${loggedUserProfile.profile_image != null}">           					
			<a href="${loggedUserProfile.profile_link }">
				<img class="border rounded-circle d-block m-auto my-3 my-md-0 d-md-inline m-md-0 proUserImage" src="<c:url value="/resources/user-contents/${loggedUserProfile.profile_image }" />" alt="${loggedUserProfile.up_userPersonalInfo.fullname } images"/>
			</a>
         </c:if>
    </div>
    <h4 class="mt-4 mb-2 text-center">${loggedUserProfile.up_userPersonalInfo.fullname }
    </h4>
    <h5 class="text-primary bg-light rounded py-1 text-center fw-bold fs-4">
        ${loggedUserProfile.up_userPersonalInfo.active_status }</h5>
    <h6>${loggedUserProfile.up_userPersonalInfo.job_status }</h6>
    <h6>${loggedUserProfile.up_userPersonalInfo.education_status }</h6>
    <hr>
    <p><span><i class="fa-solid fa-briefcase"></i> Total Applied Jobs</span>
        <span>${appliedJobs }</span>
    </p>
    <p><span><i class="bi bi-person-hearts"></i> New Notifications</span>
        <span>${conNoti }</span>
    </p>
    <p><span><i class="bi bi-chat-left-heart-fill"></i> New Message</span>
        <span>${msgNoti }</span>
    </p>
    <p><span><i class="bi bi-balloon-heart-fill"></i> New Jobs</span> <span>${newJobSl
            }</span>
    </p>
    <hr>        
    <c:choose>
        <c:when test="${newsfeedShowUrl.equals('mypost')}">
        <div>
            <a href="${pageContext.request.contextPath}/user-personal-newsfeed-post" class="btn btn-lg w-50 d-block m-auto btn-outline-primary fw-bold fs-4">My Posts</a>
           </div>
        </c:when>
        <c:when test="${newsfeedShowUrl.equals('allpost')}">
        <div>
            <a href="${pageContext.request.contextPath}/user-newsfeed" class="btn btn-lg w-50 d-block m-auto btn-outline-primary fw-bold fs-4">All Posts</a>
        </div>
        </c:when>
        <c:when test="${newsfeedShowUrl.equals('bothpost')}">
        <div class="d-flex align-items-center justify-content-center">
            <a href="${pageContext.request.contextPath}/user-personal-newsfeed-post" class="btn btn-lg d-block m-auto btn-outline-primary fw-bold fs-4">My Posts</a>
               <a href="${pageContext.request.contextPath}/user-newsfeed" class="btn btn-lg d-block m-auto btn-outline-primary fw-bold fs-4">All Posts</a>
           </div>
        </c:when>
    </c:choose>
</div>