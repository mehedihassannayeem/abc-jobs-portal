<!-- common footer of the website -->
<div class="container-fluid px-5 mt-5 cusFooter" id="urlContactFormHash">
    <!-- footer top part -->
    <div class="row">
        <div class="col-12 col-md-3 d-flex flex-column justify-content-center align-items-center cusFooterAddress">
            <h6>Address</h6>
            <address class="text-center">
                6555 Old Collamer Rd S, East Syracuse, NY 13057, United States
            </address>
        </div>

        <div class="col-12 col-md-6 px-5 py-5 py-md-0">
            <iframe class="w-100"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d32985.831889675996!2d-76.17701744213979!3d43.050621558086746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1657907211968!5m2!1sen!2sbd%22"
                height="385px" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>

        </div>
        <div class="col-12 col-md-3 p-3 cusFooterForm">
            <form action="${pageContext.request.contextPath}/contact-form" method="post">
                <h6>Have Any Queries ?</h6>
                <select class="mb-5" name="querying_for" id="queries">
                    <option selected>Please select the appropriate one</option>
                    <option value="jobSeekers">Job Seekers</option>
                    <option value="joinCompany">Join ABC Ptv. Ltd.</option>
                </select>
                <div class="formGroup">
                    <label for="conFormName">Name :</label>
                    <input type="text" id="conFormName" name="user_name" placeholder="Enter your full name">
                    <span class="errMsg" id="conFormNameMsg">Minimum lenght 5</span>
                </div>

                <div class="formGroup">
                    <label for="conFormEmail">Email :</label>
                    <input type="email" id="conFormEmail" name="user_email" placeholder="Valid email only">
                    <span class="errMsg" id="conFormEmailMsg">Enter a valid email</span>
                </div>

                <div class="formGroup">
                    <label for="conFormMessage">Message :</label>
                    <br>
                    <textarea type="text" id="conFormMessage" name="user_query"
                        placeholder="Enter your queries in this box..."></textarea>
                    <span class="errMsg" id="conFormMessageError">Minimum length 15</span>
                </div>

                <div>
                    <input class="btn btn-primary btn-lg" type="submit" id="conFormButton" value="Submit" >
                </div>
            </form>
        </div>
    </div>

    <!-- bottom part -->
    <div class="row my-5 cusFooterBottom">
        <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-3">
            <h6>General</h6>
            <ul>
                <li><a href="">About Us</a></li>
                <li><a href="">Contact Us</a></li>
                <li><a href="">Work With Us</a></li>
                <li><a href="">Up coming Events</a></li>
                <li><a href="">International Partners</a></li>
                <li><a href="">National Partners</a></li>
                <li><a href="">Other Partners</a></li>
                <li><a href="">Feedback</a></li>
                <li><a href="">Cookies</a></li>
                <li><a href="">Privacy & Policy</a></li>
                <li><a href="">Terms & Conditions</a></li>
            </ul>
        </div>

        <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-3">
            <h6>Job Seekers</h6>
            <ul>
                <li><a href="">Create Account</a></li>
                <li><a href="">Video Resume</a></li>
                <li><a href="">My Job Panel</a></li>
                <li><a href="">E-learning</a></li>
                <li><a href="">Career Development</a></li>
                <li><a href="">Career Counseling</a></li>
                <li><a href="">Video Guide</a></li>
                <li><a href="">Certificate</a></li>
                <li><a href="">FAQ</a></li>
            </ul>
        </div>

        <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-3">
            <h6>Community</h6>
            <ul>
                <li><a href="">Help & Support</a></li>
                <li><a href="">Trust & Safety</a></li>
                <li><a href="">Blog</a></li>
                <li><a href="">Event</a></li>
                <li><a href="">Podcast</a></li>
                <li><a href="">Community Standards</a></li>
                <li><a href="${pageContext.request.contextPath}/sitemap" style="color : tomato;">Site Map</a></li>
            </ul>
        </div>

        <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-3">
            <h6>Social Media</h6>
            <ul>
                <li><i class="fa-brands fa-2x fa-facebook"></i><a href="">Facebook</a></li>
                <li><i class="fa-brands fa-2x fa-twitter"></i><a href="">Twitter</a></li>
                <li><i class="fa-brands fa-2x fa-linkedin"></i><a href="">LinkedIn</a></li>
                <li><i class="fa-brands fa-2x fa-youtube"></i><a href="">YouTube</a></li>
                <li><i class="fa-solid fa-2x fa-download"></i><a href="">Download Our App</a></li>
                <li class="col-12 col-lg-6 cusFooterDownApp d-block d-md-inline-block my-4">
                    <img alt="download our app from play store" src="<c:url value="/resources/images/abc-content/playStore.jpg" />">
                </li>
                <li class="col-12 col-lg-6 cusFooterDownApp d-block d-md-inline-block my-4">
                    <img alt="download our app from app store" src="<c:url value="/resources/images/abc-content/appStore.jpg" />">
                </li>                
            </ul>
            <div class="text-center">
	            <a href="#" class="btn p-3 rounded-5">
	                <i class="fa-brands fa-4x fa-autoprefixer text-primary"></i>
	                <span class="d-block text-bg-light px-3 py-2 text-primary fs-5 fw-bolder mt-2 text-uppercase rounded-5">Go To Top</span>
	            </a>
            </div>
        </div>
    </div>

    <!-- copyright section -->
    <div class="cusFooterCopyrightSection px-4">
        <div class="row">
            <div class="col-12 col-md-6  mt-4 mt-md-0 text-center text-md-start">
                <p>Copyright &copy; 2022. All rights reserved by <a href="">ABC Jobs Ptv Ltd</a></p>
            </div>
            <div class="col-12 col-md-6  mt-4 mt-md-0 text-center text-md-end">
                <p>Developed by - <a href="${pageContext.request.contextPath}/developer-designer">Mehedi Hassan</a></p>
            </div>
        </div>
    </div>
</div>