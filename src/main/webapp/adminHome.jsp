<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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
.mySlides{ 
	display: none;
}
img {
	vertical-align: middle;
}
/* Slideshow container */
.slideshow-container {
  padding: 68px 0 0 0;
  width: 100%;
  margin: 0;
}
.text {
  color: #400040;
  font-size: 15px;
  padding: -50% 0 0 0;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}
/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}
.active {
  background-color: #717171;
}
@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
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
	
	<section>
		<div class="slideshow-container">
			<div class="mySlides fade">
			  <img src="basics.jpg" style="width:100%; height: 500px;">
			  <div class="text">BUY 999</div>
			</div>
			
			<div class="mySlides fade">
			  <img src="classic-men-s-shirts-stacked-four-pile-white-background-81700475.jpg" style="width:100%; height: 500px;">
			  <div class="text">BUY 999</div>
			</div>
			
			<div class="mySlides fade">
			  <img src="IMG_0975.jpg" style="width:100%; height: 500px;">
			  <div class="text">BUY 999</div>
			</div>
		
		</div>
		
		<div style="text-align:center">
		  <span class="dot"></span> 
		  <span class="dot"></span> 
		  <span class="dot"></span> 
		</div>

	</section>
		
		<section>
			<div class="boxes">
				
			</div>
		</section>
	<script>
		var slideIndex = 0;
		showSlides();
		
		function showSlides() {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++) {
		    slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</body>
</html>