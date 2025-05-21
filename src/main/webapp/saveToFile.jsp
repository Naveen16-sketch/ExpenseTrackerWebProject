<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Save to File</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 100px auto;
            text-align: center;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #2c3e50;
        }

        a, button {
            margin-top: 20px;
            display: inline-block;
            padding: 12px 24px;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            border-radius: 6px;
            transition: background 0.3s;
        }

        button:hover, a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Save Transactions to File</h2>
    <form action="SaveToFileServlet" method="post">
        <button type="submit">💾 Save Now</button>
    </form>
    <a href="index.jsp">← Back to Home</a>
</div>
</body>
</html>
