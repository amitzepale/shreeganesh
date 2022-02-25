<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	font-family: sans-serif;
}
.forget{
	width: 420px;
	height: 500px;
	background: transparent;
	color: black;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
	
}
</style>
</head>
<body>
		<form action="">
			<div class="forget">
			<label>Email</label>
				<input type="email" placeholder="Enter Email" name="email" required/>
				<input type="button" name="btn" value="OK">
			</div>
		</form>
</body>
</html>