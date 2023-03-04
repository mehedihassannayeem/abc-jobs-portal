<div class="sidebar close">
	<div class="logo-details">
		<img onclick="parent.location='${pageContext.request.contextPath}/admin-homepage'" class="comImg cursor"
			src="<c:url value="/resources/admin-section/images/icon.png" />"
		alt="company logo"> <span class="logo_name">ABC Jobs
			Portal</span>
	</div>
	<ul class="nav-links">
		<li><a href="${pageContext.request.contextPath}/admin-dashboard"> <i class="fa-solid fa-user-shield"></i> <span
					class="link_name">Dashbaord</span>
			</a>
			<ul class="sub-menu blank">
				<li><a class="link_name" href="${pageContext.request.contextPath}/admin-dashboard">Dashbaord</a></li>
			</ul>
		</li>
		<li>
			<div class="iocn-link">
				<a href="javascript:void(0)"> <i class="fa-solid fa-business-time"></i> <span class="link_name">Job Section</span>
				</a> <i class="fa-solid fa-caret-down"></i>
			</div>
			<ul class="sub-menu">
				<li><a class="link_name" href="javascript:void(0)">Job
						Section</a></li>
				<li><a href="${pageContext.request.contextPath}/all-jobs">All Jobs</a></li>
				<li><a href="${pageContext.request.contextPath}/create-job">Create New Job</a></li>
				<li><a href="${pageContext.request.contextPath}/create-new-category">Create New
						Category</a></li>
				<li><a href="${pageContext.request.contextPath}/register-company">Register Company</a></li>
			</ul>
		</li>
		<li>
			<div class="iocn-link">
				<a href="javascript:void(0)"> <i class="fa-solid fa-envelope-circle-check"></i> <span class="link_name">Bulk
						Emails</span>
				</a> <i class="fa-solid fa-caret-down"></i>
			</div>
			<ul class="sub-menu">
				<li><a class="link_name" href="javascript:void(0)">Bulk
						Emails</a></li>
				<li><a href="${pageContext.request.contextPath}/all-emails">All Sent Emails</a></li>
				<li><a href="${pageContext.request.contextPath}/sent-email">Sent New Email</a></li>
			</ul>
		</li>
		<li>
			<div class="iocn-link">
				<a href="javascript:void(0)"> <i class="fa-solid fa-chalkboard-user"></i> <span class="link_name">E-learning</span>
				</a> <i class="fa-solid fa-caret-down"></i>
			</div>
			<ul class="sub-menu">
				<li><a class="link_name" href="javascript:void(0)">E-learning</a></li>
				<li><a href="${pageContext.request.contextPath}/elearning-courses">All Courses</a></li>
				<li><a href="${pageContext.request.contextPath}/elearning-create-course">Create New
						Course</a></li>
			</ul>
		</li>
		<li>
			<div class="iocn-link">
				<a href="javascript:void(0)"> <i class="fa-solid fa-house-laptop"></i> <span class="link_name">Career Course</span>
				</a> <i class="fa-solid fa-caret-down"></i>
			</div>
			<ul class="sub-menu">
				<li><a class="link_name" href="javascript:void(0)">Career
						Course</a></li>
				<li><a href="${pageContext.request.contextPath}/career-dev-courses">All Courses</a></li>
				<li><a href="${pageContext.request.contextPath}/career-dev-create-course">Create New
						Course</a></li>
						<li><a href="${pageContext.request.contextPath}/career-dev-create-course-shift">Create New
						Course Shift</a></li>
			</ul>
		</li>
		<li><a href="javascript:void(0)"> <i class="fa-solid fa-chart-pie"></i> <span class="link_name">Analytics</span>
			</a>
			<ul class="sub-menu blank">
				<li><a class="link_name" href="javascript:void(0)">Analytics</a></li>
			</ul>
		</li>
		<li><a href="javascript:void(0)"> <i class="fa-solid fa-chart-line"></i> <span class="link_name">Chart</span>
			</a>
			<ul class="sub-menu blank">
				<li><a class="link_name" href="javascript:void(0)">Chart</a></li>
			</ul>
		</li>
		<li><a href="${pageContext.request.contextPath}/user-contact-form"> <i class="fa-solid fa-user-tie"></i> <span
					class="link_name">Contact
					Form</span>
			</a>
			<ul class="sub-menu blank">
				<li><a class="link_name" href="${pageContext.request.contextPath}/user-contact-form">Contact
						Form</a></li>
			</ul>
		</li>
		<li><a href="${pageContext.request.contextPath}/user-reviews"> <i class="fa-solid fa-address-card"></i> <span
					class="link_name">User
					Reviews</span>
			</a>
			<ul class="sub-menu blank">
				<li><a class="link_name" href="${pageContext.request.contextPath}/user-reviews">User
						Reviews</a></li>
			</ul>
		</li>
		<li><a href="javascript:void(0)"> <i class="fa-solid fa-clock-rotate-left"></i>
				<span class="link_name">History</span>
			</a>
			<ul class="sub-menu blank">
				<li><a class="link_name" href="javascript:void(0)">History</a></li>
			</ul>
		</li>
		<li><a href="javascript:void(0)"> <i class="fa-solid fa-gear"></i> <span class="link_name">Setting</span>
			</a>
			<ul class="sub-menu blank">
				<li><a class="link_name" href="javascript:void(0)">Setting</a></li>
			</ul>
		</li>
		<li>
			<div class="profile-details">
				<div class="profile-content">
					<img src="<c:url value="/resources/admin-section/images/${loggedAdmin.admin_image }" />"
					alt="${loggedAdmin.admin_name } image">
				</div>
				<div class="adminInfo">
					<div class="profile_name">${loggedAdmin.admin_name }</div>
					<div class="adPosition">${loggedAdmin.admin_position }</div>
				</div>
				<a href="${pageContext.request.contextPath}/admin-logout"><i
						class="fa-solid fa-right-from-bracket"></i></a>
			</div>
		</li>
	</ul>
</div>