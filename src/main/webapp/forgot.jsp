<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
@charset "ISO-8859-1";
body{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	background-size: cover;
	font-family: sans-serif;
	background-repeat: no-repeat;
}
.loginbox{
	width: 420px;
	height: 500px;
	background: transparent;
	color: #000040;
	top: 60%;
	left: 50%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
}
.avtar{
	padding: 30px;
	width: 400px;
	height: 100px;
	border-radius: 15%;
	position: absolute;
	top: -20%;
	right: 1%;
	justify-content: center;
}
h1{
	margin: 0;
	padding: 30px;
	text-align: center;
	font-size: 35px;
}
.loginbox{
	font-weight: bold;
}
input{
	width: 100%;
	margin-bottom: 20px;
}
input[type="text"], input[type="password"]
{
	font-size: 18px;
	color: black;
	border: none;
	border-bottom: 1px solid black;
	background: transparent;
	outline: none;
	height: 40px;
	animation: mymove 3s infinite;
}
@keyframes mymove {
  50% {border-bottom-color: lightblue;}
}
.loginbox input[type="submit"]{
	border: none;
	outline: none;
	width: 120px;
	height: 40px;
	background: orange;
	font-size: 18px;
	border-radius: 20px;
	font-weight: bold;
	transition: 0.3sec;
	border-bottom: 2px solid black;
	animation: mymove 3s infinite;
}
input[type="reset"]{
	border: none;
	outline: none;
	width: 120px;
	height: 40px;
	background: orange;
	font-size: 18px;
	border-radius: 20px;
	font-weight: bold;
	transition: 0.3sec;
	border-bottom: 2px solid black;
	animation: mymove 3s infinite;
}
@keyframes mymove {
  50% {border-bottom-color: blue;}
}
.loginbox input[type="submit"]:hover{
	cursor: pointer;
	background: blue;
	color: white;
	
}
.loginbox input[type="reset"]:hover{
	cursor: pointer;
	background: red;
	color: white;
}
.loginbox a{
	padding: 3px 4px;
	color: black;
	display: flex;
	float: center;
	text-align: center;
	text-decoration: none;
	font-size: 18px;
	transition: 0.3sec;
}
.loginbox a:hover{
	color: orange;
}
</style>
</head>
<body>
				<section>
			<div class="loginbox">
				<img src="ganesh_logo.jpeg" class="avtar">
				<h1>LOGIN HERE</h1>

				<form action="<%=request.getContextPath()%>/login" method="post">
					<label>EMAIL</label>
					<input type="text" name="username" placeholder="Enter Email">

					<input type="submit" name="" value="Ok">
					<input type="reset" value="cancel" onclick="alert('Confirm')">

					<a href="home.jsp">--Home--</a>
				</form>
		    </div>
	</section>
</body>
</html>