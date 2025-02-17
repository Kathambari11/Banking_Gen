<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
<style>
body {
	font-family: Times roman;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.login-container {
	width: 300px;
	margin: 100px auto;
	padding: 20px;
	background-color: #ffffff;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-container h2 {
	margin-top: 0;
	color: #333;
}

.login-container input[type="text"], .login-container input[type="password"]
	{
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.login-container input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #28a745;
	border: none;
	border-radius: 5px;
	color: #ffffff;
	font-size: 16px;
}

.login-container input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="login-container">
		<h2>Admin Login</h2>
		<form action="AdminLoginServlet" method="post">
			<input type="text" name="username" placeholder="Username" required>
			<input type="password" name="password" placeholder="Password"
				required> <input type="submit" value="Login">
		</form>
	</div>
</body>
</html>
