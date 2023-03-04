package com.db.validation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.connection.DB_Connection;

@WebServlet("/check_available_username")
public class CheckAvailableUsername extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uName = req.getParameter("user_name");

		// replacing all the space around or between words
		String username = uName.trim().replaceAll("\\s+", "-").toLowerCase();

		try {

			Connection conn = DB_Connection.getConn();

			PreparedStatement pStatement = conn.prepareStatement("SELECT * FROM user_profile WHERE username = ?");
			pStatement.setString(1, username);
			ResultSet rSet = pStatement.executeQuery();

			if (rSet.next()) {
				resp.setContentType("text/html");
				PrintWriter dis = resp.getWriter();
				dis.print(username + " <-- is taken");
			} else {
				resp.setContentType("text/html");
				PrintWriter dis = resp.getWriter();
				dis.print(username + " <-- is available");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
