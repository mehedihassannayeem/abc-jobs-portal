package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ResetPasswordChaningInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		boolean f = false;

		String forPassIden = request.getParameter("forgotPassIdentity");
		String forPassCreate = request.getParameter("forgotPassCreate");
		String forPassConfirm = request.getParameter("forgotPassConfirm");

		RequestDispatcher rDispatcher = null;

		if ((forPassIden == null) || (forPassIden.isBlank())) {
			response.sendRedirect("forgot-password");
		} else if ((forPassCreate.length() <= 7) || (forPassConfirm.length() <= 7)
				|| (!forPassCreate.equals(forPassConfirm))) {
			request.setAttribute("status", "passError");
			rDispatcher = request.getRequestDispatcher("forgot-password");
			rDispatcher.forward(request, response);

		} else {
			f = true;
		}

		return f;
	}
}
