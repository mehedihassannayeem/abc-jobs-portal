<!-- header section logged out top part-->
<div class="container-fluid p-3 cusHeader">
    <div class="row">
        <!-- company information -->
        <div class="col-12 col-md-8 d-md-flex align-items-center">        
            <a href="${pageContext.request.contextPath }" class="d-block d-md-inline-block">
                <img class="border rounded-circle d-block m-auto my-3 my-md-0 d-md-inline m-md-0 cusHeaderImg"
                src="<c:url value="/resources/images/abc-content/logo.png" />"  alt="company logo">
            </a>
            <h1 class="d-none d-sm-block d-md-inline-block text-center text-md-start mt-sm-2 ms-md-5 cusHeaderTitle">
                ABC Jobs Portal
            </h1>
        </div>

        <!-- link section -->
        <div
            class="col-12 col-md-4 text-center d-flex justify-content-center justify-content-md-end align-items-center my-3 my-md-0">
            <a href="${pageContext.request.contextPath}/login" class="d-inline-block cursor">
                <i class="fa-solid fa-4x fa-right-to-bracket"></i>
                <p class="cusHeaderLogIn">Log In</p>
            </a>
            <span class="hrDivBar mx-5"></span>
            <a href="" class="d-inline-block d-flex align-items-center">
                <i class="bi fa-5x bi-laptop"></i>
                <span class="ms-3 cusHeaderElearing">E-Learing</span>
            </a>
        </div>
    </div>
</div>

<!-- header section logged out bottom part-->
<nav class="navbar navbar-expand-lg bg-light p-3 cusHeaderNav">
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