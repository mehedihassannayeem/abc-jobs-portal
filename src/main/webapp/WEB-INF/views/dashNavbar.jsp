<!-- header section logged in top part-->
<div class="container-fluid p-3 cusHeader dashNavbar">
    <div class="row">
        <!-- company information -->
        <div class="col-12 col-lg-3 d-md-flex align-items-center">
            <a href="${pageContext.request.contextPath}/homepage" class="d-block d-md-inline-block">
                <img class="border rounded-circle d-block m-auto my-3 my-md-0 d-md-inline m-md-0 cusHeaderImg"
                    src="<c:url value="/resources/images/abc-content/logo.png" />" alt="company logo">
            </a>
            <h1 class="d-none d-sm-block d-md-inline-block text-center text-md-start mt-sm-2 ms-md-3 cusHeaderTitle">
                ABC Jobs Portal
            </h1>
        </div>

        <!-- search section -->
        <div
            class="position-relative col-12 col-lg-4 my-5 my-lg-0 wm-100 d-flex justify-content-center align-items-center">
            <form action="${pageContext.request.contextPath}/searching-user-lists" method="post" class="d-flex align-items-center justify-content-around rounded-5 mt-3 bg-light w-100">
                <button class="iconHeartButton" type="submit"><i id="pubProSrcIcon" class="bi fa-3x bi-search-heart cursor"></i></button>
                <input type="search" id="pubProSearch" name="pubProSearch" placeholder="search people near you">
            </form>
            <!-- infuture searched history here -->
            <div class="searchResultBox mt-2 bg-light p-3 d-none">
                <ul>
                    <li></li>
                </ul>
            </div>
        </div>


        <!-- link section -->
        <div class="col-12 col-lg-5">
            <div class="row d-flex align-items-center">
                <div class="col-12 col-sm-6 col-lg-5 mt-3 mt-lg-0 text-center text-lg-end">
                    <ul class="dashIcons">
                        <li class="mx-5 mx-lg-3">
                            <a class="noti" href="${pageContext.request.contextPath}/user-newsfeed">
                                <i class="bi fa-3x bi-person-hearts"></i>
                                <span class="notiCount">${conNoti}</span>
                            </a>
                        </li>
                        <li class="mx-5 mx-lg-3">
                            <a class="noti">
                                <i class="bi fa-3x bi-chat-left-heart-fill"></i>
                                <span class="notiCount">${msgNoti}</span>
                            </a>
                        </li>
                        <li class="mx-5 mx-lg-3">
                            <a class="noti">
                                <i class="bi fa-3x bi-balloon-heart-fill"></i>
                                <span class="notiCount">${newJobSl}</span>
                            </a>
                        </li>
                    </ul>
                </div>


                <div
                    class="col-12 col-sm-6 col-lg-7 text-center d-flex justify-content-center justify-content-lg-end align-items-center my-3 my-md-0">
                    <a href="${pageContext.request.contextPath}/dashboard" class="d-inline-block">
                         <c:if test="${loggedUserProfile.profile_image == null }">
                         	<i class="bi fa-3x bi-person-circle"></i>
                         </c:if>
                         <c:if test="${loggedUserProfile.profile_image != null}">           					
							<img class="border rounded-circle d-block m-auto my-3 my-md-0 d-md-inline m-md-0 cusUserImg" src="<c:url value="/resources/user-contents/${loggedUserProfile.profile_image }" />" alt="${loggedUserProfile.up_userPersonalInfo.fullname } images"/>
                         </c:if>                        
                        <p class="cusHeaderLogIn">                        	
                         ${loggedUserProfile.up_userPersonalInfo.fullname }
                        </p>
                    </a>
                    <span class="hrDivBar mx-5"></span>
                    <a href="" class="d-inline-block d-flex align-items-center">
                        <i class="bi fa-3x bi-laptop"></i>
                        <i></i> <span class="ms-3 cusHeaderElearing">E-Learing</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- header section logged in bottom part-->
<nav class="navbar navbar-expand-lg bg-light p-3 cusHeaderNav dashNavbar">
    <div class="container-fluid">
        <button class="navbar-toggler mb-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse row" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item col-12 col-lg-2">
                    <a href="" class="nav-link"><i class="bi bi-search-heart-fill"></i> Find Jobs</a>
                </li>
                <li class="nav-item col-12 col-lg-2">
                    <a href="" class="nav-link"> <i class="fa-solid fa-chart-line"></i> Test Your Skills</a>
                </li>
                <li class="nav-item col-12 col-lg-2 my-2">
                    <select name="tips" id="tips">
                        <option selected value="interviewTips">Interview Tips</option>
                        <option value="resumeWritingTips">Resume Writing Tips</option>
                        <option value="coverLetterWritingTips">Cover Letter Writing Tips</option>
                    </select>
                </li>
                <li class="nav-item col-12 col-lg-2 my-2">
                    <select name="career" id="career">
                        <option selected value="careerResources">Career Resources</option>
                        <option value="careerGuideline">Career Guideline</option>
                        <option value="careerCounseling">Career Counseling</option>
                    </select>
                </li>
                <li class="nav-item col-12 col-lg-2">
                    <a href="" class="nav-link"><i class="fa-solid fa-handshake-angle"></i> My Jobs</a>
                </li>
                <li class="nav-item col-12 col-lg-2">
                    <a href="" class="nav-link"><i class="bi bi-info-circle-fill"></i> Contact Info</a>
                </li>
            </ul>
        </div>
    </div>
</nav>