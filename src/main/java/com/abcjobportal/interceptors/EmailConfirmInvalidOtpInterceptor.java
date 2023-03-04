package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class EmailConfirmInvalidOtpInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		boolean f = false;

		String userOtpInput = request.getParameter("emOtpCon");

		HttpSession session = request.getSession();
		RequestDispatcher rDispatcher = null;

		if ((userOtpInput == null) || (userOtpInput.isBlank()) || (userOtpInput.isEmpty())) {

			request.setAttribute("status", "noOtp");
			rDispatcher = request.getRequestDispatcher("registration");
			rDispatcher.forward(request, response);

		} else if (!session.getAttribute("userAuthOtp").equals(userOtpInput)) {

			request.setAttribute("status", "invOtp");
			rDispatcher = request.getRequestDispatcher("registration");
			rDispatcher.forward(request, response);

		} else if (session.getAttribute("userAuthOtp").equals(userOtpInput)) {

			f = true;
		}

		return f;
	}

}
