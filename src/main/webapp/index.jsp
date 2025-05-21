<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Tracker - Home</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eaf2f8;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: 80px auto;
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            margin: 15px;
            padding: 15px 30px;
            font-size: 16px;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            border-radius: 6px;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        footer {
            text-align: center;
            margin-top: 40px;
            color: #888;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>💰 Expense Tracker</h1>

    <a href="addTransaction.jsp" class="btn">➕ Add Transaction</a>
    <a href="ViewSummaryServlet" class="btn">📊 View Summary</a>
    <a href="loadFromFile.jsp" class="btn">📂 Load From File</a>
    <a href="saveToFile.jsp" class="btn">💾 Save To File</a>

    <footer>
        &copy; 2025 Expense Tracker | Developed by Naveen Bhajantri
    </footer>
</div>

</body>
</html>
