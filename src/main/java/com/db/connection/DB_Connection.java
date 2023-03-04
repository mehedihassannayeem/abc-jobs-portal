package com.db.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB_Connection {
	private static Connection conn;

	public static Connection getConn() {

		try {
			if (conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_jobs_portal", "root", "odrita");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

	public static void closeConn() {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}
}
