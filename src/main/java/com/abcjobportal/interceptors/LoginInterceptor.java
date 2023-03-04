package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean f = false;
		HttpSession session = request.getSession();
		RequestDispatcher rDispatcher = null;

		if (session.getAttribute("loggedUserProfile") != null) {
			f = true;
		} else {
			String logUname = request.getParameter("email");
			String logUpass = request.getParameter("user_password");

			if (logUname == null || logUpass == null) {
				response.sendRedirect("login");

			} else if (logUname.isBlank() || logUpass.isBlank()) {
				request.setAttribute("status", "logError");
				rDispatcher = request.getRequestDispatcher("login");
				rDispatcher.forward(request, response);

			} else {

				f = true;

			}
		}

		return f;
	}
}
