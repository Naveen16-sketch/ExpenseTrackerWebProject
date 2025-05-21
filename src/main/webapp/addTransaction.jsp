<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Transaction</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f9fc;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 60px auto;
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: bold;
        }

        input, select {
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        button {
            background-color: #27ae60;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        button:hover {
            background-color: #219150;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            color: #2980b9;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Add Transaction</h2>
    <form action="AddTransactionServlet" method="post">
        <label for="type">Transaction Type:</label>
        <select name="type" id="type" required>
            <option value="INCOME">Income</option>
            <option value="EXPENSE">Expense</option>
        </select>

        <label for="category">Category:</label>
        <input type="text" name="category" placeholder="e.g., Salary, Rent, Food" required>

        <label for="amount">Amount:</label>
        <input type="number" name="amount" step="0.01" required>

        <button type="submit">Add</button>
    </form>
    <a href="index.jsp">← Back to Home</a>
</div>
</body>
</html>
