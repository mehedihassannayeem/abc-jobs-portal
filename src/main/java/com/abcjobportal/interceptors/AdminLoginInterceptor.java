package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminLoginInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean f = false;

		HttpSession session = request.getSession();
		RequestDispatcher rDispatcher = null;

		if (session.getAttribute("loggedAdmin") != null) {
			f = true;
		} else {
			String adEmail = request.getParameter("admin_email");
			String adPass = request.getParameter("admin_password");

			if (adEmail == null || adPass == null) {
				response.sendRedirect("admin");
			} else if (adEmail.isBlank() || adPass.isBlank()) {
				request.setAttribute("status", "fieldBlank");
				rDispatcher = request.getRequestDispatcher("admin");
				rDispatcher.forward(request, response);
			} else {
				f = true;
			}
		}

		return f;
	}

}
