package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MasterLoginInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean f = false;

		RequestDispatcher rDispatcher = null;

		String masEml = request.getParameter("admin_email");
		String masPass = request.getParameter("admin_password");

		if (masEml == null && masPass == null) {
			request.setAttribute("status", "visible");
			rDispatcher = request.getRequestDispatcher("admin-dashboard");
			rDispatcher.forward(request, response);
		} else if (masEml.isBlank() || masPass.isBlank()) {
			request.setAttribute("status", "fieldBlank");
			rDispatcher = request.getRequestDispatcher("admin-dashboard");
			rDispatcher.forward(request, response);
		} else {
			f = true;
		}

		return f;
	}
}
