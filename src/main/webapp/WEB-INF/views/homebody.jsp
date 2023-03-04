<!-- hero section -->
<div class="container-fluid heroSection my-5 p-5">
    <div class="row">

        <div class="col-12 my-5">
            <div class="col-12 d-flex justify-content-center align-items-center text-center">
                <div>
                    <p>New Offers are waiting for you</p>
                    <h1>
                        Find Your Favourite Job <br> And Fullfil Your Dreams
                    </h1>
                </div>
            </div>
        </div>

        <!-- job search -->
        <div class="col-12 my-5 jobSearch p-4 rounded">
            <form action="${pageContext.request.contextPath}/found-jobs" method="post">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-5 py-2 py-lg-0">
                        <div class="input px-3 rounded d-flex justify-content-around align-items-center ">
                            <span>What</span> <input type="text" name="job_what"
                                placeholder="title, position, keyword, company" class="rounded">
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-5 py-2 py-lg-0">
                        <div class="input px-3 rounded d-flex justify-content-around align-items-center ">
                            <span>Where</span> <input type="text" name="job_where" placeholder="state, province, country"
                                class="rounded">
                        </div>
                    </div>
                    <div
                        class="col-12 col-md-12 col-lg-2 d-flex justify-content-center align-items-center py-2 py-md-3 text-center text-lg-start py-lg-0">
                        <button type="submit" class="btn btn-outline-primary">Find
                            Jobs</button>
                    </div>
                </div>
            </form>
        </div>

        <!-- icons -->
        <div class="col-12 my-5 jobicons">
            <div class="row">
                <div class="col-6 col-sm-4 col-lg-2 my-3 my-lg-0">
                    <div class="d-flex justify-content-center align-items-center">
                        <div>
                            <i class="fa-solid fa-podcast"></i>
                        </div>
                        <div>
                            <p>live jobs</p>
                            <p>${liveJobs}+</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-3 my-lg-0">
                    <div class="d-flex justify-content-center align-items-center">
                        <div>
                            <i class="fa-solid fa-user-plus"></i>
                        </div>
                        <div>
                            <p>vacancies</p>
                            <p>${vacancies}+</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-3 my-lg-0">
                    <div class="d-flex justify-content-center align-items-center">
                        <div>
                            <i class="fa-solid fa-users"></i>
                        </div>
                        <div>
                            <p>job seekers</p>
                            <p>${jobSeekers}+</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-3 my-lg-0">
                    <div class="d-flex justify-content-center align-items-center">
                        <div>
                            <i class="fa-solid fa-building"></i>
                        </div>
                        <div>
                            <p>companies</p>
                            <p>${companies}+</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-3 my-lg-0">
                    <div class="d-flex justify-content-center align-items-center">
                        <div>
                            <i class="fa-solid fa-street-view"></i>
                        </div>
                        <div>
                            <p>new jobs</p>
                            <p>${newJobs}+</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-3 my-lg-0">
                    <div class="d-flex justify-content-center align-items-center">
                        <div>
                            <i class="fa-solid fa-house-laptop"></i>
                        </div>
                        <div>
                            <p>Remote Jobs</p>
                            <p>${remoteJobs}+</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- trusted companies -->
        <div class="col-12 my-5 tustCom">
            <div class="row d-flex justify-content-around align-items-center">
                <div class="col-12 col-lg-3">
                    <p>Trusted Companies</p>
                </div>
                <div class="col-12 col-lg-7">
                    <div class="row">
                        <div class="col-6 col-md-4 col-lg-2 my-3 my-lg-0">
                            <img src="<c:url value="/resources/images/trusted-company/google.png" />"
                            alt="trusted companies image
                            google">
                        </div>
                        <div class="col-6 col-md-4 col-lg-2 my-3 my-lg-0">
                            <img src="<c:url value="/resources/images/trusted-company/microsoft.png" />"
                            alt="trusted companies image
                            microsoft">
                        </div>
                        <div class="col-6 col-md-4 col-lg-2 my-3 my-lg-0">
                            <img src="<c:url value="/resources/images/trusted-company/havard.png" />"
                            alt="trusted companies image
                            microsoft">
                        </div>
                        <div class="col-6 col-md-4 col-lg-2 my-3 my-lg-0">
                            <img src="<c:url value="/resources/images/trusted-company/skillshare.png" />"
                            alt="trusted companies image
                            skillshare">
                        </div>
                        <div class="col-6 col-md-4 col-lg-2 my-3 my-lg-0">
                            <img src="<c:url value="/resources/images/trusted-company/hsbc.png" />"
                            alt="trusted companies image hsbc">
                        </div>
                        <div class="col-6 col-md-4 col-lg-2 my-3 my-lg-0">
                            <img src="<c:url value="/resources/images/trusted-company/udemy.png" />"
                            alt="trusted companies image
                            udemy">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="mb-5 mt-3">
    </div>
</div>





<!-- job feeds and search resutls section -->
<div class="container-fluid JobFeedRecentSearch my-5 p-5">
    <div class="row" id="tabs">

        <ul class="d-flex justify-content-center">
            <li><a href="#jobFeedsTab">
                    <div class="col-6 text-end">
                        <button class="btn btn-primary optBtn">
                            Job Feeds <span
                                class="badge text-bg-secondary rounded-pill px-4 bg-light text-dark">${newJobSl}</span>
                        </button>
                    </div>
                </a></li>
            <li><a href="#jobSearchTab">
                    <div class="col-6 text-start">
                        <button class="btn btn-primary optBtn">Recent Searches</button>
                    </div>
                </a></li>
        </ul>



        <!-- job feeds section -->
        <div id="jobFeedsTab">
            <div class="container jobFeeds my-5 py-5">
                <div class="row m-auto">
                    <!-- left side content -->
                    <div class="col-12 col-lg-6 leftSide">

                        <!-- this ul will have loop to show the avilable jobs -->
                        
                        <ul>
                        <c:forEach items="${allJobs }" var="jobs">
                            <li>
                                <div class="card py-3 px-4 mb-5">
                                    <div class="card-head">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <h2>${jobs.job_title }</h2>
                                            <div class="moreSec">

                                                <!-- this i will be the tigger for showing more option, pass with id to delete -->
                                                <i class="fa-solid fa-3x fa-ellipsis-vertical" id="moreSecDot"></i>

                                                <!-- this is the more option, response on click -->
                                                <ul class="moreSecOpt">
                                                    <li>
                                                    	<a href="${pageContext.request.contextPath}/apply-job-link/${jobs.job_unique_id }">
                                                    		<i class="fa-solid fa-paper-plane"></i> Apply Now
                                                    	</a>
                                                    </li>
                                                    <li>
                                                    	<a href="${jobs.job_description.apply_link }">
                                                    		<i class="fa-solid fa-share-from-square"></i> Apply on their site
                                                    	</a>
                                                    </li>
                                                    <li>
                                                    	<a href="">
                                                    		<i class="fa-solid fa-share-from-square"></i> Save Job
                                                    	</a>
                                                    </li>
                                                    <li>
                                                        <!-- this is the icon for deleting the jobs from feeds, with the help of id -->
                                                        <a href="">
                                                        	<i class="fa-solid fa-ban"></i> Not Interested
                                                        </a>
                                                    </li>
                                                    <li>
                                                    	<a href="">
                                                    		<i class="fa-solid fa-flag"></i> Report Job
                                                    	</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h3>${jobs.job_com.com_name }</h3>
                                        <div></div>
                                        <h4>${jobs.job_com.com_address }</h4>
                                        <div>
                                            <button class="btn btn-outline-primary btn-lg mx-4">${jobs.employment_status
                                                }</button>
                                            <button class="btn btn-outline-primary btn-lg mx-4">${jobs.job_shift }</button>
                                            <button class="btn btn-outline-primary btn-lg mx-4">
                                                <i class="bi bi-currency-dollar"></i> ${jobs.salary }
                                            </button>
                                        </div>
                                        <hr>
                                    </div>
                                    <div class="card-body">
                                        <p>${jobs.job_description.job_description }</p>

                                        <!-- this is the link to show all the details of the jobs to right side -->
                                        <c:if test="${loggedUserProfile == null }">
                                        	<a href="${pageContext.request.contextPath}/get-job-detail/${jobs.job_unique_id }" class="stretched-link"></a>
                                        </c:if>
                                        <c:if test="${loggedUserProfile != null}">
                                        	<a href="${pageContext.request.contextPath}/homepage/get-job-detail-logged/${jobs.job_unique_id }" class="stretched-link"></a>
                                        </c:if>
                                        
                                    </div>
                                    <div class="card-footer">posted on - ${jobs.posted_time }</div>
                                </div>
                            </li>
                            </c:forEach>                          
                        </ul>
                    </div>

                    <!-- right side content -->
                    <div class="col-12 col-lg-6 my-5 my-lg-0 rightSide">
                        <!-- in the upper div pass the id that has clicked to show the details -->
                        <ul>
                            <li>
                                <div class="card py-3 px-4">
                                    <div class="card-head">
                                        <h2>${jobDetails.job_title }</h2>
                                        <h3>${jobDetails.job_com.com_name }</h3>
                                        <h4>${jobDetails.job_com.com_address }</h4>
                                        <div>
                                            <button
                                                class="btn btnHover btn-outline-primary btn-lg mx-4">${jobDetails.employment_status
                                                }</button>
                                            <button class="btn btnHover btn-outline-primary btn-lg mx-4">${jobDetails.job_shift }</button>
                                            <button class="btn btnHover btn-outline-primary btn-lg mx-4">
                                                <i class="bi bi-currency-dollar"></i> ${jobDetails.salary }
                                            </button>
                                        </div>
                                        <div class="my-3">                                        
                                        <c:forEach var = "i" begin = "1" end = "${jobDetails.rating }">
									         <i class="bi fa-2x mx-2 bi-star-fill text-warning"></i>
									    </c:forEach>
									    <span class="text-info mx-3 fs-4 fw-bold">${jobDetails.rating }</span>                                           
                                        </div>
                                        <div class="d-flex justify-content-center align-items-center">
                                            <a href="${pageContext.request.contextPath}/apply-job-link/${jobDetails.job_unique_id }" class="btn btn-lg btn-outline-primary mx-4">
                                                <i class="fa-solid fa-paper-plane"></i> Apply Now
                                            </a>
                                            <a href="${jobDetails.job_description.apply_link }" class="btn btn-lg btn-outline-primary mx-4">
                                                <i class="fa-solid fa-share-from-square"></i> Apply on their
                                                Site
                                            </a>
                                            <i class="bi bi-heart fa-3x mx-4 fvtJob" id="fvtJob"></i>
                                            <i class="bi bi-heart-fill fa-3x fvtJobFill mx-4" id="fvtJobFill"></i>
                                        </div>
                                        <hr>
                                    </div>

                                    <!-- right side body -->
                                    <div class="card-body">
                                        <div class="col-12">
                                            <h2 class="bg-light p-3 rounded mb-5">Job Summary</h2>
                                            <ul>
                                                <li><span class="spLeft">Publish on :</span> <span>${jobDetails.publish_on
                                                        }</span>
                                                </li>
                                                <li><span class="spLeft">Vacancy :</span> <span>${jobDetails.vacancy }</span>
                                                </li>
                                                <li><span class="spLeft">Employment Status :</span>
                                                    <span>${jobDetails.employment_status }</span>
                                                </li>
                                                <li><span class="spLeft">Experience :</span> <span>${jobDetails.experience
                                                        }</span>
                                                </li>
                                                <li><span class="spLeft">Gender :</span> <span>${jobDetails.gender }</span>
                                                </li>
                                                <li><span class="spLeft">Age Limit :</span> <span>${jobDetails.age_limit
                                                        }</span>
                                                </li>
                                                <li><span class="spLeft">Job Location :</span>
                                                    <span>${jobDetails.job_description.job_location}</span>
                                                </li>
                                                <li><span class="spLeft">Salary :</span> <span>
                                                        <i class="bi bi-currency-dollar"></i> ${jobDetails.salary }
                                                    </span></li>
                                                <li><span class="spLeft">Application Deadline :</span>
                                                    <span>${jobDetails.application_deadline }</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-12 my-5">
                                            <h2 class="bg-light my-5 p-3 rounded">Full Job
                                                Description</h2>
                                            <div>
                                                <h3>Vacancy</h3>
                                                <p>We are hiring ${jobDetails.vacancy } people.</p>
                                            </div>
                                            <div>
                                                <h3>Job Context</h3>
                                                <p>${jobDetails.job_description.job_context }</p>
                                            </div>
                                            <div>
                                                <h3>Job Responsibilities</h3>
                                                <p>${jobDetails.job_description.job_responsibilities }</p>
                                            </div>
                                            <div>
                                                <h3>Employment Status</h3>
                                                <p>Your employment status will be ${jobDetails.employment_status }</p>
                                            </div>
                                            <div>
                                                <h3>Workplace</h3>
                                                <p>You will be working ${jobDetails.job_description.work_place }.</p>
                                            </div>
                                            <div>
                                                <h3>Education Requirements</h3>
                                                <p>${jobDetails.job_description.educational_requirement }</p>
                                            </div>
                                            <div>
                                                <h3>Experience Requirements</h3>
                                                <p>${jobDetails.job_description.experience_requirement }</p>
                                            </div>
                                            <div>
                                                <h3>Additional Requirements</h3>
                                                <p>${jobDetails.job_description.additional_requirement }</p>
                                            </div>
                                            <div>
                                                <h3>Job Location</h3>
                                                <p>Your working place location will be ${jobDetails.job_description.job_location }.</p>
                                            </div>
                                            <div>
                                                <h3>Salary</h3>
                                                <p>Your salary will be <i class="bi bi-currency-dollar"></i>
                                                    ${jobDetails.salary } (yearly basic).</p>
                                            </div>
                                            <div>
                                                <h3>Compensation & Other Benefits</h3>
                                                <p>${jobDetails.job_description.benefits }</p>
                                            </div>
                                            <div>
                                                <h3>Job Source</h3>
                                                <p>${jobDetails.job_description.job_source }</p>
                                            </div>
                                            <div>
                                                <h3>Published On</h3>
                                                <p>This job published on ${jobDetails.publish_on }.</p>
                                            </div>
                                            <div>
                                                <h3>Deadline</h3>
                                                <p>You can apply till ${jobDetails.application_deadline }.</p>
                                            </div>
                                            <div>
                                                <h3>Company Information</h3>
                                                <ul>
                                                    <li><span class="spLeftBtm">Name :</span> <span>${jobDetails.job_com.com_name
                                                            }</span>
                                                    </li>
                                                    <li><span class="spLeftBtm">Address :</span> <span>${jobDetails.job_com.com_address
                                                            }</span>
                                                    </li>
                                                    <li><span class="spLeftBtm">Website :</span> <span>${jobDetails.job_com.com_website
                                                            }</span>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="d-flex justify-content-center align-items-center mt-5">
                                                <a href="${pageContext.request.contextPath}/apply-job-link/${jobDetails.job_unique_id }" class="btn btn-outline-primary mx-4">
                                                    <i class="fa-solid fa-paper-plane"></i> Apply Now
                                                </a>
                                                <a href="${jobDetails.job_description.apply_link }" class="btn btn-outline-primary mx-4">
                                                    <i class="fa-solid fa-share-from-square"></i> Apply on their
                                                    Site
                                                </a>
                                                <i class="bi bi-heart fa-3x mx-4 fvtJob" id="fvtJob1"></i>
                                                <i class="bi bi-heart-fill fa-3x fvtJobFill mx-4" id="fvtJobFill1"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>




        <!-- recent search section -->
        <div id="jobSearchTab">
            <div class="container recSearch my-5">
                <div class="box p-5">
                    <!-- function for clear all the job search, this time database table truncate -->                    
					<c:choose>						 
						 <c:when test="${loggedUserProfile == null}">
                    		<a href="${pageContext.request.contextPath}/delete-all-searched-job-not-log" class="m-auto d-block mb-5 btn btn-outline-danger">Clear All Searches History</a>						     
						 </c:when>
						 <c:when test="${loggedUserProfile != null}">
						     <a href="${pageContext.request.contextPath}/delete-all-searched-job-log/${loggedUserProfile.user_profile_id}" class="m-auto d-block mb-5 btn btn-outline-danger">Clear All Searches History</a>						     
						 </c:when>
					</c:choose>
							
					
                    <!-- loop for showing the job searches -->
                    <ul>
                    <c:forEach items="${searchedJobs }" var="searchedJob" >
                    	<li class="bg-light py-3 px-5 mb-4 rounded">
                            <div class="row">
                                <div class="col-12 col-md-5 my-3 my-md-0 d-flex align-items-center">
                                    <i class="fa-solid fa-briefcase"></i> <span class="ms-5"> ${searchedJob.job_what } </span>
                                </div>
                                <div class="col-12 col-md-5 my-3 my-md-0 d-flex align-items-center">
                                    <i class="fa-solid fa-location-dot"></i> <span class="ms-5"> ${searchedJob.job_where }
                                    </span>
                                </div>
                                <div class="col-12 col-md-2 my-3 my-md-0 text-center text-md-end">
                                	<a href="${pageContext.request.contextPath}/delete-searched-job/${searchedJob.find_jobs_serial_id }" ><i class="fa-solid fa-trash-can-arrow-up text-danger cursor"></i></a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>                                          
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <hr class="mb-5 mt-3">
</div>


<!-- search by category section -->
<div class="container-fluid my-5 p-5 sbSection">
    <h1 class="secHead">Search By Category</h1>
    <div class="row">
        <!-- looping -->
        <c:forEach items="${categories }" var="category">
        <div class="col-12 col-sm-6 col-md-4 col-lg-2 my-4">
            <div class="card">
                <div>
                    <i class="${category.category_icon}"></i>
                </div>
                <h3>${category.category_name}</h3>
                <a href="${pageContext.request.contextPath}/get-all-matched-category-jobs/${category.category_name }" class="stretched-link"></a>
            </div>
        </div>
       	</c:forEach>
    </div>

    <hr class="mb-5 mt-3">
</div>



<!-- search by skills section -->
<div class="container-fluid my-5 p-5 sbSection">
    <h1 class="secHead">Search By Skills</h1>


    <div class="row">
        <!-- looping -->
        <c:forEach items="${jobSkills }" var="skill">
        <div class="col-12 col-md-6 col-lg-3 my-4">
            <div class="card">
                <div>
                    <i class="${skill.skill_icon}"></i>
                </div>
                <h3>${skill.skill_name}</h3>
                 <a href="${pageContext.request.contextPath}/get-all-matched-skill-jobs/${skill.job_skill_id }" class="stretched-link"></a>
            </div>
        </div>
       </c:forEach>
    </div>


    <hr class="mb-5 mt-3">
</div>



<!-- tender section -->
<div class="container-fluid my-5 p-5 tenSection">
    <h1 class="secHead">Tender</h1>

    <div class="row">
        <!-- looping -->
        <c:forEach items="${jobTenders }" var="tender">
        <div class="col-12 col-md-6 col-lg-3 my-4">
            <div class="card p-3 my-4">
                <div>
                    <img class="rounded-circle" src="<c:url value="/resources/images/tenders/${tender.tender_company_image}" />" alt="${tender.tender_company_name} company image">
                </div>
                <div class="ms-3">
                    <h3>${tender.tender_company_name}</h3>
                    <p>${tender.tender_details}</p>
                </div>
                 <a href="${pageContext.request.contextPath}/get-tender-job/${tender.job_tender_id }" class="stretched-link"></a>
            </div>
        </div>
        </c:forEach>
    </div>

    <hr class="mb-5 mt-3">
</div>




<!-- internship jobs section -->
<div class="container-fluid my-5 p-5 internSection">
    <h1 class="secHead">Internship Jobs</h1>


    <div class="row">
        <!-- looping -->
         <c:forEach items="${jobInterns }" var="internship">
        <div class="col-12 col-md-6 col-lg-3 my-4">
            <div class="card p-3 my-4">
                <div>
                    <img class="rounded-circle" src="<c:url value="/resources/images/internships/${internship.intern_company_image}" />" alt="${internship.intern_company_name} company image">
                </div>
                <div class="ms-3">
                    <h3>${internship.intern_company_name}</h3>
                    <h4>${internship.intern_title}</h4>
                </div>
                <a href="${pageContext.request.contextPath}/get-intern-job/${internship.job_intern_id }" class="stretched-link"></a>
            </div>
        </div>
        </c:forEach>
    </div>

    <hr class="mb-5 mt-3">
</div>




<!-- elearning section -->
<div class="container-fluid my-5 p-5 elearnSection">
    <h1 class="secHead">E-learing</h1>


    <div class="row">
        <!-- looping -->
       <c:forEach items="${elearningCourses }" var="elearnCourse">
        <div class="col-12 col-md-6 col-lg-3 my-5">
            <div class="card">
                <div class="card-header mb-3"></div>
                <img class="card-img-top" src="<c:url value="/resources/images/courses/${elearnCourse.ecourse_image}" />" alt="${elearnCourse.ecourse_title} image">
                <hr>
                <div class="card-body">
                	<p class="text-center text-primary fs-3 fw-bold bg-light rounded py-3 mb-5">${elearnCourse.ecourse_title}</p>
                    <a href="${pageContext.request.contextPath}/get-ecourse/${elearnCourse.ecourse_id }" class="btn card-link stretched-link mb-4 btn-outline-primary btn-lg d-block m-auto">Enroll
                        now <i class="fa-brands fa-opencart ms-3 my-3"></i></a>
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="d-flex align-items-center ms-4">
                            <div><i class="fa-solid fa-4x fa-people-roof"></i></div>
                            <div class="ms-3">
                                <h4>Joined By</h4>
                                <h4>${elearnCourse.joined_by}+</h4>
                            </div>
                        </div>
                        <div class="d-flex align-items-center me-4">
                            <div><i class="fa-solid fa-4x fa-clock"></i></div>
                            <div class="ms-3">
                                <h4>Hours need</h4>
                                <h4>${elearnCourse.hours_required}+</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer px-5">
                    <div class="d-flex align-items-center justify-content-between">
                        <h2><i class="me-4 fa-solid fa-video"></i> ${elearnCourse.videos}+</h2>
                        <h2><i class="me-4 fa-solid fa-puzzle-piece"></i> ${elearnCourse.quizzes}+</h2>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <h2><i class="me-4 fa-solid fa-book-open-reader"></i> ${elearnCourse.notes}+</h2>
                        <h2><i class="me-4 fa-solid fa-id-card-clip"></i> ${elearnCourse.certificate}</h2>
                    </div>
                </div>                 
            </div>
        </div>
       </c:forEach>

    </div>

    <hr class="mb-5 mt-3">
</div>




<!-- career development section -->
<div class="container-fluid my-5 p-5 carDev">

    <h1 class="secHead">Career Development Section</h1>

    <div class="row">

        <!-- morning shift -->
        <div class="col-12 col-lg-6 my-5 my-lg-0 p-3">
            <div class="row bg-primary d-flex align-items-center p-3 rounded text-white">
                <div class="col-5">
                    <i class="fa-solid fa-4x fa-sun"></i>
                </div>
                <div class="col-7">
                    <h2>Morning Shift</h2>
                </div>
            </div>

            
               <!-- looping div -->
               <c:forEach items="${careerDevCourses }" var="careerDevCourse">
               <c:if test="${careerDevCourse.course_shift == 1}">
                <div class="card bg-light my-3 rounded-2 py-2 px-3 border-0">
                    <div class="card-header d-none"></div>
                    <div class="card-body">
                        <div class="d-flex align-items-center ">
                            <div>
                                <a href="" class="stretched-link">
                                    <img class="rounded-circle ms-3" src="<c:url value="/resources/images/courses/${careerDevCourse.course_image}" />" alt="${careerDevCourse.course_title} logo">
                                </a>
                            </div>
                            <div class="mx-4">
                                <p>${careerDevCourse.course_title}</p>
                                <p>Start from - ${careerDevCourse.course_date}</p>
                                <p>Schedule - ${careerDevCourse.course_schedule}</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer d-none"></div>
                    <a href="${pageContext.request.contextPath}/get-day-shift-course-details/${careerDevCourse.career_dev_con_id }" class="stretched-link"></a>
                </div>
                </c:if>
           	</c:forEach>
        </div>
        
        
        <!-- day shift -->
        <div class="col-12 col-lg-6 my-5 my-lg-0 p-3">
            <div class="row bg-primary d-flex align-items-center p-3 rounded text-white">
                <div class="col-5">
                    <i class="fa-solid fa-4x fa-sun"></i>
                </div>
                <div class="col-7">
                    <h2>Day Shift</h2>
                </div>
            </div>

            
               <!-- looping div -->
               <c:forEach items="${careerDevCourses }" var="careerDevCourse">
               <c:if test="${careerDevCourse.course_shift == 2}">
                <div class="card bg-light my-3 rounded-2 py-2 px-3 border-0">
                    <div class="card-header d-none"></div>
                    <div class="card-body">
                        <div class="d-flex align-items-center ">
                            <div>
                                <a href="" class="stretched-link">
                                    <img class="rounded-circle ms-3" src="<c:url value="/resources/images/courses/${careerDevCourse.course_image}" />" alt="${careerDevCourse.course_title} logo">
                                </a>
                            </div>
                            <div class="mx-4">
                                <p>${careerDevCourse.course_title}</p>
                                <p>Start from - ${careerDevCourse.course_date}</p>
                                <p>Schedule - ${careerDevCourse.course_schedule}</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer d-none"></div>
                    <a href="${pageContext.request.contextPath}/get-day-shift-course-details/${careerDevCourse.career_dev_con_id }" class="stretched-link"></a>
                </div>
                </c:if>
           	</c:forEach>
        </div>
        
        
        <!-- evening shift -->
        <div class="col-12 col-lg-6 my-5 my-lg-0 p-3">
            <div class="row bg-primary d-flex align-items-center p-3 rounded text-white">
                <div class="col-5">
                    <i class="fa-solid fa-4x fa-moon"></i>
                </div>
                <div class="col-7">
                    <h2>Evening Shift</h2>
                </div>
            </div>

            
               <!-- looping div -->
               <c:forEach items="${careerDevCourses }" var="careerDevCourse">
               <c:if test="${careerDevCourse.course_shift == 3}">
                <div class="card bg-light my-3 rounded-2 py-2 px-3 border-0">
                    <div class="card-header d-none"></div>
                    <div class="card-body">
                        <div class="d-flex align-items-center ">
                            <div>
                                <a href="" class="stretched-link">
                                    <img class="rounded-circle ms-3" src="<c:url value="/resources/images/courses/${careerDevCourse.course_image}" />" alt="${careerDevCourse.course_title} logo">
                                </a>
                            </div>
                            <div class="mx-4">
                                <p>${careerDevCourse.course_title}</p>
                                <p>Start from - ${careerDevCourse.course_date}</p>
                                <p>Schedule - ${careerDevCourse.course_schedule}</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer d-none"></div>
                    <a href="${pageContext.request.contextPath}/get-day-shift-course-details/${careerDevCourse.career_dev_con_id }" class="stretched-link"></a>
                </div>
                </c:if>
           	</c:forEach>
        </div>



        <!-- night shift -->
        <div class="col-12 col-lg-6 my-5 my-lg-0 p-3">
            <div class="bg-primary d-flex align-items-center p-3 rounded text-white">
                <div class="col-5">
                    <i class="fa-solid fa-4x fa-moon"></i>
                </div>
                <div class="col-7">
                    <h2>Night Shift</h2>
                </div>
            </div>


            <!-- course card -->
            
            <!-- looping div -->
               <c:forEach items="${careerDevCourses }" var="careerDevCourse">
               <c:if test="${careerDevCourse.course_shift == 4}">
                <div class="card bg-light my-3 rounded-2 py-2 px-3 border-0">
                    <div class="card-header d-none"></div>
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <a href="" class="stretched-link">
                                    <img class="rounded-circle ms-3" src="<c:url value="/resources/images/courses/${careerDevCourse.course_image}" />" alt="${careerDevCourse.course_title} logo">
                                </a>
                            </div>
                            <div class="mx-4">
                                <p>${careerDevCourse.course_title}</p>
                                <p>Start from - ${careerDevCourse.course_date}</p>
                                <p>Schedule - ${careerDevCourse.course_schedule}</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer d-none"></div>
                    <a href="${pageContext.request.contextPath}/get-night-shift-course-details/${careerDevCourse.career_dev_con_id }" class="stretched-link"></a>
                </div>
                </c:if>
           	</c:forEach>
        </div>
    </div>

    <hr class="mb-5 mt-3">
</div>





<!-- join us section -->
<div class="container-fluid my-5 p-5 joinUs">

    <h1 class="secHead">Join Us</h1>

    <div class="row">
        <div class="col-12 col-lg-8 bg-light p-5">
            <div class="px-5">
                <h2>Find the best job for you</h2>
                <h2 class="ms-5 py-2">With-in a minute</h2>
                <h2 class="ms-5 px-5">With out any pain</h2>
            </div>
            <p class="w-75 m-auto my-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste voluptatum
                consequatur, molestiae ad eum iure commodi aliquid error minus optio unde suscipit incidunt accusamus
                necessitatibus voluptatibus ipsum, at debitis nemo dolores delectus illo aliquam doloremque labore qui!
                Veritatis quidem possimus ipsum assumenda deleniti id, dicta cupiditate hic exercitationem distinctio
                vero eligendi culpa recusandae, accusantium explicabo? Natus necessitatibus beatae non dolorum. Omnis
                est at sint. Optio nemo nulla, dolor dolore at ex inventore ullam, aspernatur odio omnis fugit unde
                harum. Sit veniam iure hic? Nisi corrupti cum dolorum fugit ex illo nam in a quod eveniet explicabo,
                numquam qui pariatur ab?</p>
            <a href="${pageContext.request.contextPath}/registration"
                class="btn btn-outline-primary btn-lg w-25 d-block m-auto">Join Us Now <i
                    class="fa-solid fa-paper-plane"></i></a>
        </div>
        <div class="col-12 col-lg-4 my-5 my-lg-5">
            <img class="d-block border border-primary rounded-5 m-auto" src="<c:url value="/resources/images/abc-content/app.jpg" />"
            alt="download our app">
            <div class="mt-5 text-center">
                <img class="imgBtn" src="<c:url value="/resources/images/abc-content/playStore.jpg" />"
                alt="playstore app link">
                <img class="imgBtn" src="<c:url value="/resources/images/abc-content/appStore.jpg" />"
                alt="appstore app link">
            </div>
        </div>
    </div>

    <hr class="mb-5 mt-3">
</div>





<!-- success stories section -->
<div class="container-fluid my-5 p-5 sucStore">

    <h1 class="secHead">Our Success Stories</h1>

    <div id="carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active" aria-current="true"
                aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>

        <!-- carousel one -->
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="5000">
                <img src="<c:url value="/resources/images/success-stories/suc1.png" />" class="d-block
                w-100" alt="our success stories">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Well planned ideas</h5>
                    <p>All the expert of the organization meets and bring new new ideas.</p>
                </div>
            </div>

            <!-- carousel two -->
            <div class="carousel-item" data-bs-interval="5000">
                <img src="<c:url value="/resources/images/success-stories/suc2.jpg" />" class="d-block
                w-100" alt="our success stories">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Expert teachers</h5>
                    <p>Be trained under our industry expert teachers.</p>
                </div>
            </div>

            <!-- carousel three -->
            <div class="carousel-item" data-bs-interval="5000">
                <img src="<c:url value="/resources/images/success-stories/suc3.jpg" />" class="d-block
                w-100" alt="our success stories">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Our students</h5>
                    <p>We believe in reality than books</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <hr class="mb-5 mt-3">
</div>




<!-- client review section -->
<div class="container-fluid my-5 p-5 revSection">

    <h1 class="secHead">Job Seekers Review</h1>
    <div id="carouselReview" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">

            <!-- carousel one -->
            <div class="carousel-item active" data-bs-interval="5000">
                <div class="row p-5">
                    <!-- looping -->
                     <c:forEach items="${userReviews }" var="review">
                     <c:if test="${review.display_section == 1 }">
                    <div class="col-12 col-md-6 col-lg-3 my-5 my-lg-0">
                    
                    <!-- looping -->
                        <div class="revCard px-5 py-4">
                            <div>
                                <img class="rounded-circle" src="<c:url value="/resources/images/reviews/${review.user_image}" />"
                                alt="${review.user_name} image">
                            </div>
                            <h4 class="my-4 text-center">${review.user_name}</h4>
                            <p>${review.user_review}</p>
                        </div>
                    </div>
                    </c:if>
                     </c:forEach>
                </div>
            </div>

            <!-- carousel two -->
			<div class="carousel-item" data-bs-interval="5000">
                <div class="row p-5">
                    <!-- looping -->
                     <c:forEach items="${userReviews }" var="review">
                     <c:if test="${review.display_section == 2 }">
                    <div class="col-12 col-md-6 col-lg-3 my-5 my-lg-0">
                    
                    <!-- looping -->
                        <div class="revCard px-5 py-4">
                            <div>
                                <img class="rounded-circle" src="<c:url value="/resources/images/reviews/${review.user_image}" />"
                                alt="${review.user_name} image">
                            </div>
                            <h4 class="my-4 text-center">${review.user_name}</h4>
                            <p>${review.user_review}</p>
                        </div>
                    </div>
                    </c:if>
                     </c:forEach>
                </div>
            </div>

            <!-- carousel three -->
			<div class="carousel-item" data-bs-interval="5000">
                <div class="row p-5">
                    <!-- looping -->
                    <c:forEach items="${userReviews }" var="review">
                    <c:if test="${review.display_section == 3 }">
                    <div class="col-12 col-md-6 col-lg-3 my-5 my-lg-0">
                    
                    <!-- looping -->
                        <div class="revCard px-5 py-4">
                            <div>
                                <img class="rounded-circle" src="<c:url value="/resources/images/reviews/${review.user_image}" />"
                                alt="${review.user_name} image">
                            </div>
                            <h4 class="my-4 text-center">${review.user_name}</h4>
                            <p>${review.user_review}</p>
                        </div>
                    </div>
                    </c:if>
                     </c:forEach>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselReview" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselReview" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <hr class="mb-5 mt-3">
</div>