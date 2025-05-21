<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<%
    double totalIncome = request.getAttribute("totalIncome") != null ? (double) request.getAttribute("totalIncome") : 0.0;
    double totalExpense = request.getAttribute("totalExpense") != null ? (double) request.getAttribute("totalExpense") : 0.0;
    double balance = totalIncome - totalExpense;
    DecimalFormat df = new DecimalFormat("0.00");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Monthly Summary</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: 60px auto;
            padding: 30px;
            background-color: white;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        p {
            font-size: 18px;
            margin: 15px 0;
            color: #555;
        }

        strong {
            color: #222;
        }

        a {
            display: inline-block;
            margin-top: 25px;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>📊 Monthly Expense Summary</h2>
        
        <p><strong>Total Income:</strong> ₹<%= df.format(totalIncome) %></p>
        <p><strong>Total Expense:</strong> ₹<%= df.format(totalExpense) %></p>
        <p><strong>Remaining Balance:</strong> ₹<%= df.format(balance) %></p>

        <a href="index.jsp">⬅ Back to Home</a>
    </div>
</body>
</html>
