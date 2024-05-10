package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {

//	

	private static Connection connection;
	private static final String URL = "jdbc:mysql://localhost:3306/";
	private static final String DATABASE = "medishop";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "Charuka2001";

	private static Statement createConnection() throws Exception {

		if (connection == null) {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL + DATABASE, USERNAME, PASSWORD);
		}
		return connection.createStatement();

	}

	public static int iud(String query) {
		int return_val = 0; 
		try {
			return_val =createConnection().executeUpdate(query);
		} catch (SQLException e) {
			// Handle SQL exceptions
			// System.err.println("SQLException: " + e.getMessage());
			// System.err.println("SQLState: " + e.getSQLState());
			// System.err.println("VendorError: " + e.getErrorCode());
			// e.printStackTrace();
			return e.getErrorCode();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return return_val;
	}

	public static ResultSet search(String query) throws Exception {
		return createConnection().executeQuery(query);
	}

	public static Connection getConnection() {
		if (connection == null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection(URL + DATABASE, USERNAME, PASSWORD);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return connection;
	}
}
