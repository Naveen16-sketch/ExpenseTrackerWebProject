package com.expensetracker.controller;

import com.expensetracker.util.DBUtil;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class ViewSummaryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double income = 0, expense = 0;

        try (Connection conn = DBUtil.getConnection()) {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM transactions");

            while (rs.next()) {
                String type = rs.getString("type");
                double amt = rs.getDouble("amount");
                if ("INCOME".equalsIgnoreCase(type)) income += amt;
                else expense += amt;
            }

            request.setAttribute("income", income);
            request.setAttribute("expense", expense);
            request.setAttribute("balance", income - expense);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        RequestDispatcher rd = request.getRequestDispatcher("viewSummary.jsp");
        rd.forward(request, response);
    }
}
