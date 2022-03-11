<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="home.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div class="navbar" id="mynav">
		<a href="login.jsp" class="avtar"><img class="avtar" src="ganesh_logo.jpeg"></a>
		<div class="navigation">
		<a href="home.jsp">Home</a>
			<div class="dropdown">
			<a href="">Product</a>
				<div class="dropdown-content">
		 			<img src="4810111.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="">3/4</a></div>
		 			<img src="5077979.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="">Sandow</a></div>
		 			<img src="jeans-icon-noto-emoji-clothing-objects-iconset-google-893246.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="">Jeans</a></div>
		 			<img src="sticker-template-with-casual-shorts-isolated_1308-61526.jpg" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="">Short Pants</a></div>
		 			<img src="t-shirt-59.png" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="">T-shirt</a></div>
		 			<img src="blue-mens-shirt.jpg" alt="Cinque Terre" width="50" height="50">
		 			<div class="desc"><a href="">Shirt</a></div>
		  		</div>
  		</div>
		<a href="contact.jsp">Contact Us</a>
		<a href="about.jsp">About</a>
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