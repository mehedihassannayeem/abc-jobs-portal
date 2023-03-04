<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page errorPage="error-page.jsp" %>
        <% if (session.getAttribute("loggedUserProfile") == null) { response.sendRedirect("/AbcJobPortal/login"); } %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">

                <!-- all necessary links, cdns -->
                <%@ include file="./required-links-cdns-log.jsp" %>

                    <!-- on page style -->
                    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/dashboard.css" />">
                    <script type="text/javascript" src="<c:url value="/resources/js/dashboard.js" />" ></script>

                   
            </head>

            <body>
                <!-- common header -->
                <%@ include file="./dashNavbar.jsp" %>


                    <!-- dashboard on body content -->

                    <div class="container-fluid pt-3 dashboard">
                        <div class="row">
                            <!-- 1st section -->
                            <div class="col-12 col-lg-2 p-0">
                                <div class="sidebar close bg-light">
                                    <i class="fa-solid fa-bars-staggered d-block p-3"></i>
                                    <ul class="nav-links">
                                        <li>
                                            <a
                                                href="${pageContext.request.contextPath}/public-profile/${loggedUserProfile.username}">
                                                <i class="fa-solid fa-person-walking-dashed-line-arrow-right"></i>
                                                <span class="link_name">Public Profile</span>
                                            </a>
                                            <ul class="sub-menu blank">
                                                <li><a class="link_name"
                                                        href="${pageContext.request.contextPath}/public-profile/${loggedUserProfile.username}">Public
                                                        Profile</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a
                                                href="${pageContext.request.contextPath}/user-newsfeed">
                                                <i class="fa-solid fa-shekel-sign"></i>
                                                <span class="link_name">News Feed</span>
                                            </a>
                                            <ul class="sub-menu blank">
                                                <li><a class="link_name"
                                                        href="${pageContext.request.contextPath}/user-newsfeed">News
                                                        Feed</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <div class="iocn-link">
                                                <a href="javascript:void(0);">
                                                    <i class="fa-solid fa-user"></i>
                                                    <span class="link_name">Update Profile</span>
                                                </a>
                                                <i class="fa-solid fa-caret-down"></i>
                                            </div>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a class="link_name" href="javascript:void(0);">Update
                                                        Profile</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0);" id="personal-info"><i
                                                            class="fa-solid fa-user-pen"></i>Personal Info</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0);" id="professional-info"><i
                                                            class="fa-solid fa-user-tie"></i>Professional
                                                        Info</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0);" id="notifications"><i
                                                            class="fa-solid fa-bell"></i>Notifications</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0);" id="social-accounts"><i
                                                            class="fa-solid fa-users-viewfinder"></i>Social
                                                        Accounts</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0);" id="privacy-policy"
                                                        id="privacy-policy"><i
                                                            class="fa-solid fa-user-shield"></i>Privacy & Security</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <div class="iocn-link">
                                                <a href="javascript:void(0);">
                                                    <i class="fa-solid fa-briefcase"></i>
                                                    <span class="link_name">Job Feeds</span>
                                                </a>
                                            </div>
                                            <ul class="sub-menu blank">
                                                <li><a class="link_name" href="javascript:void(0);">Job Feeds</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">
                                                <i class="fa-solid fa-eye-low-vision"></i>
                                                <span class="link_name">Visibility</span>
                                            </a>
                                            <ul class="sub-menu blank">
                                                <li><a class="link_name" href="javascript:void(0);">Visibility</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">
                                                <i class="fa-solid fa-users-gear"></i>
                                                <span class="link_name">Settings</span>
                                            </a>
                                            <ul class="sub-menu blank">
                                                <li><a class="link_name" href="javascript:void(0);">Settings</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <div class="profile-details bg-light">
                                                <div class="profile-content">
                                                    <c:if test="${loggedUserProfile.profile_image == null }">
                                                    	<i class="bi fa-3x bi-person-circle text-center text-primary"></i>
                                                    </c:if>
                                                    <c:if test="${loggedUserProfile.profile_image != null}">
                                                        <img class="d-block" src="<c:url value="/resources/user-contents/${loggedUserProfile.profile_image }" />" alt="${loggedUserProfile.up_userPersonalInfo.fullname } images" />
                                                    </c:if>
                                                </div>
                                                <div class="user_logout">
                                                    <div class="username">                                                    	
                                                    	${loggedUserProfile.up_userPersonalInfo.fullname }                                                       
                                                    </div>
                                                </div>
                                                <a href="${pageContext.request.contextPath}/logout"><i
                                                        class="fa-solid fa-right-from-bracket"></i></a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                            <!-- 2nd section -->
                            <div id="secondPart" class="col-12 col-md-12 col-lg-10 my-5 my-lg-0 secondPart">

                                <!-- personal information part -->
                                <div id="personalInfo" class="container-fluid personalInfo">
                                    <div class="row">
                                        <c:if test="${loggedUserProfile.profile_image == null }"
                                        	><i class="bi fa-1x bi-person-circle text-center text-primary" style="font-size: 8rem;"></i>
                                        </c:if>
                                        <c:if test="${loggedUserProfile.profile_image != null}">                                            
                                            <img class="d-block m-auto my-5 " src="<c:url value="/resources/user-contents/${loggedUserProfile.profile_image }" />" alt="${loggedUserProfile.up_userPersonalInfo.fullname } images" />
                                        </c:if>
                                    </div>

                                    <!--  -->
                                    <!--  -->
                                    <!-- profile image form -->
                                    <form class="mt-3 mb-5 row" action="user-proflie-image" method="post"
                                        enctype="multipart/form-data">
                                        <div class="col-12 col-md-6 form-group">
                                            <label for="profileImageUpload">Upload your profile image</label>
                                            <input type="file" class="form-control-file" id="profileImageUpload"
                                                name="profileImageUpload" required>
                                        </div>
                                        <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                                            <div class="row">
                                                <button
                                                    class="btn btn-outline-primary btn-lg d-block m-auto w-100">Upload
                                                    Profile Image</button>
                                            </div>
                                        </div>
                                    </form>





                                    <!--  -->
                                    <!--  -->
                                    <!-- personal information form -->
                                    <form action="update-personal-info" method="post">
                                        <input type="hidden" value="${loggedUserProfile.user_profile_id }" name="user_profile_id">                                       

                                        <!--  -->
                                        <!--  -->
                                        <!-- general information section -->
                                        <section>
                                            <div class="row">
                                                <h2 class="fs-1 mb-5">General Information</h2>
                                                <div class="col-12 col-md-6">
                                                    <div class="form-group">
                                                        <label for="userFullname">Full Name</label>
                                                        <input type="text" name="up_userPersonalInfo.fullname"
                                                            id="userFullname" placeholder="full name"
                                                            value="${loggedUserProfile.up_userPersonalInfo.fullname}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="userEmail">Email</label>
                                                        <input type="email" name="email" id="userEmail"
                                                            value="${loggedUserProfile.email}" placeholder="enter your email"
                                                            class="bg-light" readonly>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="userGender">Gender</label>
                                                        <input type="text" name="up_userPersonalInfo.gender"
                                                            id="userGender"
                                                            value="${loggedUserProfile.up_userPersonalInfo.gender}"
                                                            placeholder="male / female / others">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="userMaritalStatus">Marital Status</label>
                                                        <input type="text" name="up_userPersonalInfo.marital_status"
                                                            id="userMaritalStatus"
                                                            value="${loggedUserProfile.up_userPersonalInfo.marital_status}"
                                                            placeholder="marrided / single / divorced">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-6 my-5 my-md-0">
                                                    <div class="form-group from-right">
                                                        <label for="userUsername">Username</label>
                                                        <input type="text" name="username" id="userUsername"
                                                            value="${loggedUserProfile.username}" placeholder="username"
                                                            class="bg-light" readonly>
                                                    </div>
                                                    <div class="form-group from-right">
                                                        <label for="userPhone">Phone Number</label>
                                                        <input type="tel" name="up_userPersonalInfo.phone"
                                                            id="userPhone" value="${loggedUserProfile.up_userPersonalInfo.phone}"
                                                            placeholder="000 0000 0000">
                                                    </div>
                                                    <div class="form-group from-right">
                                                        <label for="userDob">Date of Birth</label>
                                                        <input type="text" name="up_userPersonalInfo.dob" id="userDob"
                                                            value="${loggedUserProfile.up_userPersonalInfo.dob}"
                                                            placeholder="12 June, 2003">
                                                    </div>
                                                    <div class="form-group from-right">
                                                        <label for="userNI">National Identity</label>
                                                        <input type="text" name="up_userPersonalInfo.national_identity"
                                                            id="userNI"
                                                            value="${loggedUserProfile.up_userPersonalInfo.national_identity}"
                                                            placeholder="national identification number">
                                                    </div>
                                                </div>
                                            </div>
                                        </section>


                                        <!--  -->
                                        <!--  -->
                                        <!-- public profile section -->
                                        <section>
                                            <div class="row mt-5 ">
                                                <h2 class="fs-1 mb-5">Biography</h2>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 col-md-6">
                                                    <div class="form-group">
                                                        <label for="userAddCity">Educational Status</label>
                                                        <input type="text" name="up_userPersonalInfo.education_status" id="userAddCity"
                                                            value="${loggedUserProfile.up_userPersonalInfo.education_status}" placeholder="Your last educational degree">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-6 my-5 my-md-0">
                                                    <div class="form-group from-right">
                                                        <label for="userAddState">Job Status</label>
                                                        <input type="text" name="up_userPersonalInfo.job_status" id="userAddState"
                                                            value="${loggedUserProfile.up_userPersonalInfo.job_status}"
                                                            placeholder="Your current job position">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="userAddress">Biography</label>                              
	                                            <textarea name="up_userPersonalInfo.biography" id="userAddress" placeholder="Write your bio">${loggedUserProfile.up_userPersonalInfo.biography}</textarea>
                                            </div>
                                        </section>
                                        


                                        <!--  -->
                                        <!--  -->
                                        <!-- address information section -->
                                        <section>
                                            <div class="row mt-5 ">
                                                <h2 class="fs-1 mb-5">Address Information</h2>
                                                <div class="form-group">
                                                    <label for="userAddress">Address</label>
                                                    <input type="text" name="up_userAddress.street" id="userAddress"
                                                        value="${loggedUserProfile.up_userAddress.street}"
                                                        placeholder="A/B-C, #34">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 col-md-6">
                                                    <div class="form-group">
                                                        <label for="userAddCity">City</label>
                                                        <input type="text" name="up_userAddress.city" id="userAddCity"
                                                            value="${loggedUserProfile.up_userAddress.city}" placeholder="Dhaka">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="userAddZip">Zip Code</label>
                                                        <input type="text" name="up_userAddress.zip_code"
                                                            id="userAddZip" value="${loggedUserProfile.up_userAddress.zip_code}"
                                                            placeholder="1000">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-6 my-5 my-md-0">
                                                    <div class="form-group from-right">
                                                        <label for="userAddState">State</label>
                                                        <input type="text" name="up_userAddress.state" id="userAddState"
                                                            value="${loggedUserProfile.up_userAddress.state}"
                                                            placeholder="Dhaka North">
                                                    </div>
                                                    <div class="form-group from-right">
                                                        <label for="userAddCountry">Country</label>
                                                        <input type="text" name="up_userAddress.country_name"
                                                            id="userAddCountry"
                                                            value="${loggedUserProfile.up_userAddress.country_name}"
                                                            placeholder="Bangladesh">
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <button class="btn btn-outline-primary btn-lg d-block m-auto">Update</button>

                                    </form>
                                </div>





                                <!-- professional information part -->
                                <div id="professionaInfo" class="container-fluid professionaInfo">
                                        <h2 class="fs-1 my-5">Educational Background</h2>

                                    <!-- educational experience background -->
                                   	<c:forEach items="${eduBackInfos }" var="eduBack">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userEbLOE" id="userEbLOE" value="${eduBack.education_level}"
                                                    placeholder="level of education">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userEbENDT" id="userEbENDT"
                                                    value="${eduBack.degree}" placeholder="exam name / degree Title">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userEbConSub" id="userEbConSub"
                                                    value="${eduBack.concentration}" placeholder="concentration">
                                            </div>

                                        </div>
                                        <div class="row mt-4">
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userEbInsName" id="userEbInsName"
                                                    value="${eduBack.institute}" placeholder="institution name">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="useEbGrade" id="useEbGrade"
                                                    value="${eduBack.grade}" placeholder="grade">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userEbYOP" id="userEbYOP" value="${eduBack.passing_year}"
                                                    placeholder="year of passing">
                                            </div>
                                        </div>
                                        <div
                                            class="col-12 col-md-12 mt-3 d-flex align-items-center justify-content-end">
                                            <div class="d-flex align-items-center justify-content-end">
                                                <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                <i class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                            </div>
                                        </div>
                                    </form>
                                    </c:forEach>
                                    <c:if test="${eduBackInfos.size() < 3}">
                                    <h3 class="ms-3 ms-md-4 ms-lg-5 pb-5"><i
                                            class="fa-solid cusIcon fs-2 ms-2 icon fa-folder-plus"></i>Add New</h3>
									</c:if>


                                    <!-- professional background -->
                                        <h2 class="fs-1 my-5">Professional Background</h2>
                                    <c:forEach items="${proBackInfos }" var="proBack">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userPbComName" id="userPbComName"
                                                    value="${proBack.company_name}" placeholder="company name">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userPbDesignation" id="userPbDesignation"
                                                    value="${proBack.designation}" placeholder="designation">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userPbDepartment" id="userPbDepartment"
                                                    value="${proBack.department}" placeholder="department">
                                            </div>
                                        </div>
                                        <div class="row mt-4">
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userPbEmpPeriodForm" id="userPbEmpPeriodForm"
                                                   value="${proBack.employment_period_from}"
                                                    placeholder="employment period (from)">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userPbEmpPeriodTill" id="userPbEmpPeriodTill"
                                                    value="${proBack.employment_period_till}"
                                                    placeholder="employment period (till)">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userPbComLoc" id="userPbComLoc"
                                                   value="${proBack.company_location}" placeholder="company location">
                                            </div>
                                        </div>
                                        <div
                                            class="col-12 col-md-12 mt-3 d-flex align-items-center justify-content-end">
                                            <div class="d-flex align-items-center justify-content-end">
                                                <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                <i class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                            </div>
                                        </div>
                                    </form>
                                    </c:forEach>
                                    <c:if test="${proBackInfos.size() < 3}">
                                    	<h3 class="ms-3 ms-md-4 ms-lg-5 pb-5"><i
                                            class="fa-solid cusIcon fs-2 ms-2 icon fa-folder-plus"></i>Add New</h3>
                                    </c:if>
                                    


                                    <!-- skills background -->
                                        <h2 class="fs-1 my-5">Skills Background</h2>
                                    <c:forEach items="${skillBackInfos }" var="skill">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userSbSkillName" id="userSbSkillName"
                                                    value="${skill.skill_title}" placeholder="skill">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userSbSkillOrganize" id="userSbSkillOrganize"
                                                    value="${skill.sb_organization}" placeholder="organization">
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userSbSkillDOS" id="userSbSkillDOS"
                                                    value="${skill.date_of_skilled}" placeholder="date of skilled">
                                            </div>
                                        </div>
                                        <div
                                            class="col-12 col-md-12 mt-3 d-flex align-items-center justify-content-end">
                                            <div class="d-flex align-items-center justify-content-end">
                                                <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                <i class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                            </div>
                                        </div>
                                    </form>
                                    </c:forEach>
                                    <c:if test="${skillBackInfos.size() < 16}">
                                    <h3 class="ms-3 ms-md-4 ms-lg-5 pb-5"><i
                                            class="fa-solid cusIcon fs-2 ms-2 icon fa-folder-plus"></i>Add New</h3>
                                    </c:if>
                                </div>


                                <!-- notifications part -->
                                <div id="notificationsShow" class="container-fluid notificationsShow">
                                    <h2><i class="fa-solid fa-meteor"></i> Notification control is Coming soon !
                                    </h2>
                                </div>

                                <!-- social accounts part -->
                                <div id="socialAccounts" class="container-fluid socialAccounts">

                                    <!-- social media -->
                                        <h2 class="fs-1 my-5">Social Media Section</h2>
                                        <c:if test="${loggedUserProfile.up_userSocialAccounts.facebook != null  }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="facebook" selected>Facebook</option>
                                                    <option value="twitter">Twitter</option>
                                                    <option value="youtube">Youtube</option>
                                                    <option value="instagram">Instagram</option>
                                                    <option value="linkedin">LinkedIn</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_userSocialAccounts.facebook}"
                                                    placeholder="enter your site link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    	</c:if>
                                    
                                    <c:if test="${loggedUserProfile.up_userSocialAccounts.twitter != null }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="facebook" >Facebook</option>
                                                    <option value="twitter" selected>Twitter</option>
                                                    <option value="youtube">Youtube</option>
                                                    <option value="instagram">Instagram</option>
                                                    <option value="linkedin">LinkedIn</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_userSocialAccounts.twitter}"
                                                    placeholder="enter your site link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                    
                                    <c:if test="${loggedUserProfile.up_userSocialAccounts.youtube != null }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="facebook" >Facebook</option>
                                                    <option value="twitter">Twitter</option>
                                                    <option value="youtube" selected>Youtube</option>
                                                    <option value="instagram">Instagram</option>
                                                    <option value="linkedin">LinkedIn</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_userSocialAccounts.youtube }"
                                                    placeholder="enter your site link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                    
                                    <c:if test="${loggedUserProfile.up_userSocialAccounts.instagram != null }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="facebook" >Facebook</option>
                                                    <option value="twitter">Twitter</option>
                                                    <option value="youtube">Youtube</option>
                                                    <option value="instagram" selected>Instagram</option>
                                                    <option value="linkedin">LinkedIn</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_userSocialAccounts.instagram}"
                                                    placeholder="enter your site link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                   
                                    <c:if test="${loggedUserProfile.up_userSocialAccounts.linkedin != null }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="facebook">Facebook</option>
                                                    <option value="twitter">Twitter</option>
                                                    <option value="youtube">Youtube</option>
                                                    <option value="instagram">Instagram</option>
                                                    <option value="linkedin" selected>LinkedIn</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_userSocialAccounts.linkedin}"
                                                    placeholder="enter your site link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                    <c:if test="${(loggedUserProfile.up_userSocialAccounts.facebook == null) ||
                                     (loggedUserProfile.up_userSocialAccounts.twitter == null) ||
                                      (loggedUserProfile.up_userSocialAccounts.youtube == null) ||
                                       (loggedUserProfile.up_userSocialAccounts.instagram == null ) ||
                                       (loggedUserProfile.up_userSocialAccounts.linkedin == null) }">
                                    <h3 class="ms-3 ms-md-4 ms-lg-5 my-5 pb-5"><i
                                            class="fa-solid cusIcon fs-2 ms-2 icon fa-folder-plus"></i>Add New</h3>
                                    </c:if>




                                    <!-- work links -->
                                        <h2 class="fs-1 my-5 pt-5">Work site links</h2>
                                        <c:if test="${loggedUserProfile.up_useWorkLinks.website != null  }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="website" selected>Website</option>
                                                    <option value="github">Github</option>
                                                    <option value="stackoverflow">Stackover Flow</option>
                                                    <option value="youtube">YouTube</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_useWorkLinks.website}"
                                                    placeholder="enter your social media link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                    
                                     <c:if test="${loggedUserProfile.up_useWorkLinks.github != null  }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="website">Website</option>
                                                    <option value="github" selected>Github</option>
                                                    <option value="stackoverflow">Stackover Flow</option>
                                                    <option value="youtube">YouTube</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_useWorkLinks.github }"
                                                    placeholder="enter your social media link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                    
                                     <c:if test="${loggedUserProfile.up_useWorkLinks.stack_overflow != null  }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="website">Website</option>
                                                    <option value="github">Github</option>
                                                    <option value="stackoverflow" selected>Stackover Flow</option>
                                                    <option value="youtube">YouTube</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_useWorkLinks.stack_overflow  }"
                                                    placeholder="enter your social media link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                    
                                     <c:if test="${loggedUserProfile.up_useWorkLinks.blog != null  }">
                                    <form action="" method="post" class="mt-5">
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-2 my-4 my-md-0">
                                                <select name="socialMedia" id="socialMedia">
                                                    <option value="website">Website</option>
                                                    <option value="github" >Github</option>
                                                    <option value="stackoverflow" selected>Stackover Flow</option>
                                                    <option value="youtube">YouTube</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-md-8 my-4 my-md-0">
                                                <input type="text" name="userSocialMedia" id="userSocialMedia" value="${loggedUserProfile.up_useWorkLinks.blog  }"
                                                    placeholder="enter your social media link">
                                            </div>
                                            <div
                                                class="col-12 col-md-2 my-4 my-md-0 d-flex align-items-center justify-content-center">
                                                <div class="d-flex align-items-center justify-content-end">
                                                    <i class="fa-solid cusIcon fs-2 m-0 text-primary fa-file-pen"></i>
                                                    <i
                                                        class="fa-solid cusIcon fs-2 m-0 text-danger fa-trash-arrow-up"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    </c:if>
                                    
                                    <c:if test="${ (loggedUserProfile.up_useWorkLinks.website == null) || (loggedUserProfile.up_useWorkLinks.github == null) || (loggedUserProfile.up_useWorkLinks.stack_overflow == null) || 
                                    (loggedUserProfile.up_useWorkLinks.blog == null)  }">
                                    <h3 class="ms-3 ms-md-4 ms-lg-5 my-5 pb-5"><i
                                            class="fa-solid cusIcon fs-2 ms-2 icon fa-folder-plus"></i>Add New</h3>
                                    </c:if>
                                </div>

                                <!-- privacy and policy part -->
                                <div id="privacyPolicy" class="container-fluid privacyPolicy">
                                <c:choose>
                                    <c:when test="${proPassChangeMsg.equals('changed')}">
                                        <p class="text-primary text-center fs-1 fw-bolder my-5">Your password change successfully</p>
                                    </c:when>
                                    <c:when test="${proPassChangeMsg.equals('notMatched')}">
                                        <p class="text-danger text-center fs-1 fw-bolder my-5">Old password does not matched</p>
                                    </c:when>
                                    <c:when test="${proPassChangeMsg.equals('error')}">
                                        <p class="text-warning text-center fs-1 fw-bolder my-5">Create and Confirm password mismatched</p>
                                    </c:when>
                                </c:choose>                                
                                    <form action="${pageContext.request.contextPath}/user-proflie-password" method="post" class="mt-5">
                                        <h2 class="fs-1">Change password</h2>
                                        <div class="row mt-5">
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userOldPassword" id="userOldPassword"
                                                    placeholder="enter your old password" required>
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userNewPassword" id="userNewPassword"
                                                    placeholder="create new password" required>
                                            </div>
                                            <div class="col-12 col-md-4 my-4 my-md-0">
                                                <input type="text" name="userNewPassCon" id="userNewPassCon"
                                                    placeholder="confirm new password" required>
                                            </div>
                                        </div>
                                        <div
                                            class="col-12 col-md-12 mt-3 d-flex align-items-center justify-content-center">
                                            <button class="btn btn-lg btn-primary btn-lg d-block my-5 m-auto">Change
                                                Password</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- common footer -->
                    <%@ include file="./footer.jsp" %>


                        <script type="text/javascript" src="<c:url value="/resources/js/dashSlideBar.js" />" ></script>
            </body>

            </html>