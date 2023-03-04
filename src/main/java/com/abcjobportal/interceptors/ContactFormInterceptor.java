package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ContactFormInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean f = false;

		HttpSession session = request.getSession();
		RequestDispatcher rDispatcher = null;

		String cfq = request.getParameter("querying_for");
		String cfn = request.getParameter("user_name");
		String cfe = request.getParameter("user_email");
		String cfm = request.getParameter("user_query");

		if ((cfq.equals("Please select the appropriate one")) || (cfn.isBlank() || cfn.length() < 6) || (cfe.isBlank())
				|| (cfm.isBlank() || cfm.length() < 16)) {
			request.setAttribute("status", "error");
			rDispatcher = request.getRequestDispatcher("contact-form-error");
			rDispatcher.forward(request, response);
		} else if ((!cfn.isBlank() && cfn.length() > 6) || (!cfe.isBlank()) || (!cfm.isBlank() || cfm.length() > 16)) {
			session.setAttribute("conFormName", cfn);
			session.setAttribute("conFormEmail", cfe);
			f = true;
		}

		return f;
	}
}
