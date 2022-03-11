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
	background-size: cover;
	position: absolute;
	font-family: sans-serif;
}
.navbar{
	margin: 0;
	padding: 0;
	width: 100%;
	height:10%;
	position: absolute;
	border-bottom: 2px solid lightblue;
	animation: mymove 3s infinite;
	background-color: white;
}
@keyframes mymove {
  50% {border-bottom-color: blue;}
}
.avtar{
	margin: 0;
	padding: 0;
	width:200px;
	height:60px;
}
.navigation{
	margin: -5px;
	padding: 20px 20px 50px;
	float: right;
}
a{
	font-size: 18px;
	padding: 30px;
	text-decoration: none;
	font-weight:bold;
	transition: 0.3sec;
}
.dropdown {
  position: relative;
  display: inline-block;
}
a{
	float: 40px;
}
.dropdown-content {
	padding: 10px;
	margin: 30px 0 0 -30px;
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 200px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.dropdown:hover .dropdown-content {
  display: block;
}
.desc {
  padding: 0;
  margin-top: 0;
  text-align: center;
}
.desc a{
	color: blue;
	font-size: 18px;
	font-family: sans-serif;
	transition: 0.3sec;
}
.desc:hover a{
	color: #000080;
}
.main{
	width: 420px;
	height: 500px;
	background: transparent;
	color: #000040;
	top: 40%;
	left:45%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
}
h1{
	margin: 0;
	padding: 30px;
	text-align: center;
	font-size: 35px;
}
.product{
	font-weight: bold;
}
input{
	width: 100%;
	margin-bottom: 20px;
}
textarea{
	width: 100%;
	margin-bottom: 20px;
	font-size: 18px;
	color: black;
	border: none;
	border-bottom: 1px solid black;
	background: transparent;
	outline: none;
	height: 40px;
	animation: mymove 3s infinite;
}

input[type="text"]
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
input[type="submit"]{
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
.main input[type="submit"]:hover{
	cursor: pointer;
	background: blue;
	color: white;	
}
.main input[type="reset"]:hover{
	cursor: pointer;
	background: red;
	color: white;	
}
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/short_pantservlrt" method="post">
<section>
		<div class="navbar" id="mynav">
		<img class="avtar" src="ganesh_logo.jpeg">
		<div class="navigation">
		<a href="">Home</a>
			<div class="dropdown">
			<a href="">Product</a>
				<div class="dropdown-content">
		 			<img src="4810111.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="three_forth.jsp">Three/Forth</a></div>
		 			<img src="5077979.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="sandow.jsp">Sandow</a></div>
		 			<img src="jeans-icon-noto-emoji-clothing-objects-iconset-google-893246.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="jeans.jsp">Jeans</a></div>
		 			<img src="sticker-template-with-casual-shorts-isolated_1308-61526.jpg" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="short_pants.jsp">Short Pants</a></div>
		 			<img src="t-shirt-59.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="t-shirt.jsp">T-shirt</a></div>
		 			<img src="blue-mens-shirt.jpg" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="">Shirt</a></div>
		  		</div>
  		</div>
		<a href="remove_product.jsp">Remove Product</a>
		<a href="login.jsp" style=" color: red;">Logout</a>
		</div>
		</div>
	</section>
	
	<div class="main">
			<h1> PRODUCT MANAGE</h1>
			<div class="product">
			<label>Jeans Name</label>
				<input type="text" name="product_name" placeholder="Product Name">
				
			<label>Jeans Price</label>
				<input type="text" name="product_price" placeholder="Product Price">
				
			<label>Product Description</label>
				<textarea placeholder="Product Description" rows="5" cols="50" name="product_description"></textarea>
				
			<label>Jeans Image</label>
				<input type="file" name="product_image" placeholder="Choose Image">
			
			</div>
			<input type="submit" value="Submit">
			<input type="reset" value="Cancel" onclick="alert('Confirm')">
		</div>
	
	</form>
</body>
</html>