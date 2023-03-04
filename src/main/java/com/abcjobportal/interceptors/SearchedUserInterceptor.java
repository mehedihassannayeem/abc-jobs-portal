package com.abcjobportal.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SearchedUserInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		boolean f = false;

		String findUser = request.getParameter("pubProSearch");

		RequestDispatcher rDispatcher = null;

		if ((findUser.isBlank()) || (findUser.isEmpty()) || (findUser == null)) {
			request.setAttribute("userMatched", "fieldIsEmpty");
			rDispatcher = request.getRequestDispatcher("searched-user-listing");
			rDispatcher.forward(request, response);

		} else {
			f = true;
		}

		return f;
	}
}
