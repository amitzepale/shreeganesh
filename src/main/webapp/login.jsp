<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Insert title here</title>
</head>
<body>
	<section>
			<div class="loginbox">
				<img src="ganesh_logo.jpeg" class="avtar">
				<h1>LOGIN HERE</h1>

				<form action="<%=request.getContextPath()%>/login" method="post">
					<label>EMAIL</label>
					<input type="text" name="username" placeholder="Enter Email">

					<label>PASSWORD</label>
					<input type="password" name="password" placeholder="Enter Password">


					<input type="submit" name="" value="LOGIN">

					<a href="forgot.jsp">Lost Your Password..?</a>
					<a href="home.jsp" style="color: blue; float: right">--Home--</a>
				</form>
		    </div>
	</section>
</body>
</html>