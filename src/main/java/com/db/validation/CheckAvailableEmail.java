
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

@WebServlet("/check_available_email")
public class CheckAvailableEmail extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uEmail = req.getParameter("userEmail");

		// replacing all the space around words
		String userEmail = uEmail.trim().replaceAll("\\s+", "");

		try {
			Connection conn = DB_Connection.getConn();

			PreparedStatement pStatement = conn.prepareStatement("SELECT * FROM user_profile WHERE email = ?");
			pStatement.setString(1, userEmail);
			ResultSet rSet = pStatement.executeQuery();

			if (rSet.next()) {
				resp.setContentType("text/html");
				PrintWriter dis = resp.getWriter();
				dis.print(userEmail + " <-- exists");
			} else {
				resp.setContentType("text/html");
				PrintWriter dis = resp.getWriter();
				dis.print(userEmail + " <-- accepts");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
