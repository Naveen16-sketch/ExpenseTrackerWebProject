package com.expensetracker.controller;

import com.expensetracker.util.DBUtil;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class AddTransactionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String category = request.getParameter("category");
        double amount = Double.parseDouble(request.getParameter("amount"));

        try (Connection conn = DBUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("INSERT INTO transactions (type, category, amount, date) VALUES (?, ?, ?, CURDATE())");
            ps.setString(1, type);
            ps.setString(2, category);
            ps.setDouble(3, amount);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("viewSummary.jsp");
    }
}
