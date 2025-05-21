package com.expensetracker.util;
import java.sql.*;

public class DBUtil {
	private static final String URL = "jdbc:mysql://localhost:3306/expensetracker_db";
    private static final String USER = "root";
    private static final String PASSWORD = "root123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/expensetracker_db", "root", "roo123");
    }
}
