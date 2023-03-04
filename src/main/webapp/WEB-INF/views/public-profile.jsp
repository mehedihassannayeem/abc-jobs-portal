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
            <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/public-profile.css" />">


			
    </head>

    <body>
        <!-- common header -->
        <%@ include file="./dashNavbar.jsp" %>


            <!--  on body content -->
            <div class="container my-5 p-5 pubProfile">
                <!--  looping uppder div -->
                <div class="row">
                    <div class="col-12 col-lg-8">

                        <!-- highlights info section -->
                        <div class="card">
                            <div class="card-body">
                                <div class="row d-flex align-items-center">
                                    <div class="col-12 col-md-4 text-center">
                                        <img class="d-block m-auto rounded-circle" src="<c:url value="/resources/user-contents/${userPublicProfile.profile_image
                                                        }" />" alt="${userPublicProfile.up_userPersonalInfo.fullname }
                                                    images">
                                        <i class="fa-solid fa-circle"></i><span>
                                        <c:if test="${userPublicProfile.up_userPersonalInfo.active_status == null  }">Available</c:if>
                                        ${userPublicProfile.up_userPersonalInfo.active_status }
                                        </span>
                                    </div>
                                    <div class="col-12 col-md-8 text-center text-md-start my-5 my-md-0">
                                        <h1>${userPublicProfile.up_userPersonalInfo.fullname }</h1>
                                        <h2>${userPublicProfile.up_userPersonalInfo.job_status }</h2>
                                        <h3>${userPublicProfile.up_userPersonalInfo.education_status}</h3>
                                        <h4>${userPublicProfile.up_userAddress.city}, ${userPublicProfile.up_userAddress.country_name}</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-center">
                                <button class="btn btn-outline-primary">Connet</button>
                                <button class="btn btn-outline-primary">Message</button>
                                <button class="btn btn-outline-primary">Follow</button>
                                <button class="btn btn-outline-primary">Download Resume</button>
                                <button class="btn btn-outline-primary">Report / Block</button>
                            </div>
                        </div>


                        <!-- timeline section -->
                        <div class="card timeline p-5 pb-0">
                            <h1 class="mb-4">Timeline</h1>
                            <ul>
                                <li>
                                    <p>Experience</p> <span>${userPublicProfile.up_userProfessionalInfo.work_experience}</span>
                                </li>
                                <li>
                                    <p>Hourly Rate</p> <span>${userPublicProfile.up_userProfessionalInfo.hourly_rate}/hr</span>
                                </li>
                                <li>
                                    <p>English Level</p> <span>${userPublicProfile.up_userProfessionalInfo.english_proficiency}</span>
                                </li>
                                <li>
                                    <p>Availablility</p> <span>${userPublicProfile.up_userProfessionalInfo.availability}</span>
                                </li>
                                <li>
                                    <p>Contact Info</p>
                                    <!-- trigger modal -->
                                    <span type="button" class="btn btn-primary px-4 py-2" data-bs-toggle="modal"
                                        data-bs-target="#contactInfo">View</span>


                                    <!-- Modal -->
                                    <div class="modal fade" id="contactInfo" data-bs-backdrop="static"
                                        data-bs-keyboard="false" tabindex="-1" aria-labelledby="contactInfoLabel"
                                        aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="contactInfoLabel">Contact Details</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <ul>
                                                        <li>
                                                            <p><i class="fa-solid fa-atom"></i> Profile Link</p>
                                                            <span>
                                                                <a href="${userPublicProfile.profile_link}" rel="noopener noreferrer">${userPublicProfile.profile_link}</a>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa-solid fa-envelope-circle-check"></i> Email
                                                            </p>
                                                            <span>
                                                                <a href="mailto:${userPublicProfile.email}">${userPublicProfile.email}</a>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa-solid fa-phone-flip"></i> Phone</p>
                                                            <span><a
                                                                    href="tel:+${userPublicProfile.up_userPersonalInfo.phone}">${userPublicProfile.up_userPersonalInfo.phone}</a>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa-solid fa-address-card"></i> Address</p>
                                                            <span>${userPublicProfile.up_userAddress.street}, ${userPublicProfile.up_userAddress.city}, ${userPublicProfile.up_userAddress.state}, ${userPublicProfile.up_userAddress.zip_code}, ${userPublicProfile.up_userAddress.country_name}
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa-solid fa-cake-candles"></i> Date of Birth
                                                            </p>
                                                            <span>${userPublicProfile.up_userPersonalInfo.dob}</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary btn-lg"
                                                        data-bs-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>


                        <!-- timeline section -->
                        <div class="card p-5 pb-0 timeline">
                            <h1 class="mb-4">Biography</h1>
                            <ul>
                                <li>
                                	<p>${userPublicProfile.up_userPersonalInfo.biography}</p>
                                </li>
                            </ul>
                        </div>


                        <!-- professional background section -->
                        <div class="card p-5 pb-0">
                            <h1 class="mb-4">Professional Background</h1>
                            <!-- looping -->
                            <ul>
                            <c:if test="${proBackInfos.isEmpty()}"> <p class="text-primary text-center fs-1 fw-bolder my-5">No Professional Background Available</p> </c:if>
                            <c:forEach items="${proBackInfos }" var="proBack">
                                <li>
                                    <div class="card-body bg-light rounded-4 my-4 px-5 py-3">
                                        <div class="row d-flex align-items-center">
                                            <div class="col-12 col-md-3 mb-4 mb-md-0">
                                                <img src="<c:url value="/resources/images/pro-background/${proBack.company_image}" />"  alt="${proBack.company_name} image">
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <h2>${proBack.designation}</h2>
                                                <h3>${proBack.company_name}</h3>
                                                <h4>${proBack.employment_period_from} - ${proBack.employment_period_till}</h4>
                                                <h5>${proBack.company_location}</h5>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>



                        <!-- educational background section -->
                        <div class="card p-5 pb-0">
                            <h1 class="mb-4">Educational Background</h1>
                            <!-- looping -->
                            <ul>
                            <c:if test="${eduBackInfos.isEmpty()}"> <p class="text-primary text-center fs-1 fw-bolder my-5">No Educational Background Available</p> </c:if>                            
                            <c:forEach items="${eduBackInfos }" var="eduBack">
                                <li>
                                    <div class="card-body bg-light rounded-4 my-4 px-5 py-3">
                                        <div class="row d-flex align-items-center">
                                            <div class="col-12 col-md-3 mb-4 mb-md-0">
                                                <img src="<c:url value="/resources/images/edu-backgroud/${eduBack.institute_image}" />"  alt="${eduBack.institute} image">
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <h2>${eduBack.institute}</h2>
                                                <h3>${eduBack.degree} on ${eduBack.subject_group}</h3>
                                                <h4>Passing Year : ${eduBack.passing_year}</h4>
                                                <h5>Grade: ${eduBack.grade}</h5>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                               </c:forEach>
                            </ul>
                        </div>
                    </div>



                    <div class="col-12 col-lg-4 my-5 my-lg-0 px-5 py-4 rightBar">
                        <div>
                            <h1>Social Media Links</h1>
                            
                            <ul>
                            <c:if test="${(userPublicProfile.up_userSocialAccounts.facebook == null) &&
                            (userPublicProfile.up_userSocialAccounts.twitter == null) &&
                            (userPublicProfile.up_userSocialAccounts.youtube == null) &&
                            (userPublicProfile.up_userSocialAccounts.instagram == null) &&
                            (userPublicProfile.up_userSocialAccounts.linkedin == null)
                            }"> <p class="text-primary text-center fs-1 fw-bolder my-5">No Social Account Available</p> </c:if>                            
                                <c:if test="${userPublicProfile.up_userSocialAccounts.facebook != null }">
                                	<li>
                                		<i class="fa-brands fa-facebook-square"></i> <span><a class="fw-bold text-secondary" href="${userPublicProfile.up_userSocialAccounts.facebook}" target="_blank">Facebook</a></span>
                                	</li>
                                </c:if>                                
                                <c:if test="${userPublicProfile.up_userSocialAccounts.twitter != null }">
                                	<li>
                                		<i class="fa-brands fa-twitter-square"></i> <span><a class="fw-bold text-secondary" href="${userPublicProfile.up_userSocialAccounts.twitter}" target="_blank">Twitter</a></span>
                                	</li>
                                </c:if>                                
                                <c:if test="${userPublicProfile.up_userSocialAccounts.youtube != null }">
                                	<li>
                                		<i class="fa-brands fa-youtube"></i> <span><a class="fw-bold text-secondary" href="${userPublicProfile.up_userSocialAccounts.youtube}" target="_blank">YouTube</a></span>
                                	</li>
                                </c:if>                                
                                <c:if test="${userPublicProfile.up_userSocialAccounts.instagram != null }">
                                	<li>
                                		<i class="fa-brands fa-instagram"></i> <span><a class="fw-bold text-secondary" href="${userPublicProfile.up_userSocialAccounts.instagram}" target="_blank">Instagram</a></span>
                                	</li>
                                </c:if>                                
                                <c:if test="${userPublicProfile.up_userSocialAccounts.linkedin != null }">
                                	<li>
                                		<i class="bi bi-linkedin"></i><span><a class="fw-bold text-secondary" href="${userPublicProfile.up_userSocialAccounts.linkedin}" target="_blank">LinkedIn</a></span>
                                	</li>
                                </c:if>                               
                            </ul>                            
                        </div>
                        <div>
                            <h1>Work Links</h1>                            
                            <ul>
                            <c:if test="${(userPublicProfile.up_useWorkLinks.website == null) &&
                            (userPublicProfile.up_useWorkLinks.github == null) &&
                            (userPublicProfile.up_useWorkLinks.stack_overflow == null) &&
                            (userPublicProfile.up_useWorkLinks.blog == null )
                            }"> <p class="text-primary text-center fs-1 fw-bolder my-5">No Work Info Available</p> </c:if>
                            	<c:if test="${userPublicProfile.up_useWorkLinks.website != null  }">
	                                <li>
	                                	<i class="fa-solid fa-globe"></i><span><a class="fw-bold text-secondary" href="${userPublicProfile.up_useWorkLinks.website}" target="_blank">Website</a></span>
	                                </li>
                                </c:if>
                                <c:if test="${userPublicProfile.up_useWorkLinks.github != null  }">
	                                <li>
	                                	<i class="fa-brands fa-github"></i><span><a class="fw-bold text-secondary" href="${userPublicProfile.up_useWorkLinks.github}" target="_blank">Github</a></span>
	                                </li>
                                </c:if>
                                <c:if test="${userPublicProfile.up_useWorkLinks.stack_overflow != null  }">
	                                <li>
	                                	<i class="fa-brands fa-stack-overflow"></i><span><a class="fw-bold text-secondary" href="${userPublicProfile.up_useWorkLinks.stack_overflow}" target="_blank">StackOverflow</a></span>
	                                </li>
                                </c:if>
                                <c:if test="${userPublicProfile.up_useWorkLinks.blog != null  }">
	                                <li>
	                                	<i class="fa-solid fa-blog"></i><span><a class="fw-bold text-secondary" href="${userPublicProfile.up_useWorkLinks.blog}" target="_blank">Blog</a></span>
	                                </li>
                                </c:if>
                            </ul>
                        </div>
                        <div>
                            <h1>Skills</h1>
                            <!-- looping -->
                            <ul>
                            <c:if test="${skillBackInfos.isEmpty()}"> <p class="text-primary text-center fs-1 fw-bolder my-5">No Skill Background Available</p> </c:if>
                            	<c:forEach items="${skillBackInfos }" var="skill">
                                <li>
                                	<span class="bg-primary rounded-4 text-center text-white skill">${skill.skill_title}</span>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- common footer -->
            <%@ include file="./footer.jsp" %>
    </body>

    </html>