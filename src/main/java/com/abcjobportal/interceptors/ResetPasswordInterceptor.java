package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ResetPasswordInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		boolean f = false;

		String forPassIden = request.getParameter("forgotPassIdentity");

		RequestDispatcher rDispatcher = null;

		if (forPassIden == null) {
			response.sendRedirect("forgot-password");
		} else if (forPassIden.isBlank()) {
			request.setAttribute("status", "noUser");
			rDispatcher = request.getRequestDispatcher("forgot-password");
			rDispatcher.forward(request, response);
		} else {

			f = true;
		}

		return f;
	}
}
