<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit Money</title>
<style>
body {
	font-family: Times roman;
}

.container {
	width: 50%;
	margin: auto;
	padding: 20px;
	border: 1px solid #ccc;
	box-shadow: 2px 2px 12px #aaa;
	margin-top: 50px;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-weight: bold;
}

.form-group input {
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}

.form-group button {
	padding: 10px 20px;
	background-color: #5cb85c;
	color: white;
	border: none;
	cursor: pointer;
}

.form-group button:hover {
	background-color: #4cae4c;
}

.message {
	color: green;
}

.error {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Deposit Money</h1>
		<form action="DepositServlet" method="post">
			<div class="form-group">
				<label for="account_no">Account Number</label> <input type="text"
					id="account_no" name="account_no" required>
			</div>
			<div class="form-group">
				<label for="amount">Amount</label> <input type="number" step="0.01"
					id="amount" name="amount" required>
			</div>
			<div class="form-group">
				<button type="submit">Deposit</button>
			</div>
		</form>
		<%
            String message = request.getParameter("message");
            String error = request.getParameter("error");
            if (message != null) {
        %>
		<p class="message"><%= message %></p>
		<%
            } else if (error != null) {
        %>
		<p class="error"><%= error %></p>
		<%
            }
        %>
	</div>
</body>
</html>
