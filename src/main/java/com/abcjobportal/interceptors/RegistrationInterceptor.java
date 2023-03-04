package com.abcjobportal.interceptors;

import java.io.File;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.abcjobportal.smtp.EmailsControlHanlder;
import com.abcjobportal.smtp.NewRegUser;

public class RegistrationInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		boolean f = false;

		String userFullname = request.getParameter("up_userPersonalInfo.fullname");
		String userUsername = request.getParameter("username");
		String userEmail = request.getParameter("email");
		String userCrePass = request.getParameter("regFormCrePass");
		String userConPass = request.getParameter("user_password");

		HttpSession session = request.getSession();
		RequestDispatcher rDispatcher = null;

		if (userFullname == null || userUsername == null || userEmail == null || userCrePass == null
				|| userConPass == null) {
			response.sendRedirect("registration");
		} else if (userFullname.isBlank() || userUsername.isBlank() || userEmail.isBlank() || userConPass.isBlank()
				|| userConPass.isBlank()) {

			request.setAttribute("status", "regError");
			rDispatcher = request.getRequestDispatcher("registration");
			rDispatcher.forward(request, response);

		} else {
			if (userCrePass.equals(userConPass)) {

				// calling the email control handler
				EmailsControlHanlder ech = new EmailsControlHanlder();
				String regOTP = ech.getRegOtp();

				NewRegUser regUser = new NewRegUser(userFullname, userEmail, regOTP);

				// getting the path of the logo.png to send with email
				String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
						+ File.separator + "images" + File.separator + "abc-content" + File.separator + "logo.png";

				boolean confirmUser = ech.regEmailSend(regUser, path);

				if (confirmUser) {
					session.setAttribute("newUserName", userFullname);
					session.setAttribute("newUserEmail", userEmail);
					session.setAttribute("userAuthOtp", regOTP);

					f = true;
				}

			} else {
				request.setAttribute("status", "regError");
				rDispatcher = request.getRequestDispatcher("registration");
				rDispatcher.forward(request, response);
			}

		}

		return f;
	}
}
