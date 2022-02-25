<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
padding: 0;
  margin: 0;
  font-size: 12px;
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
	height:50px;
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
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 100px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
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
		  		</div>
  		</div>
		<a href="contact.jsp">Contact Us</a>
		<a href="about.jsp">About</a>
		</div>
		</div>
	</section>
	<div class="about-section">
  <h1>About Us Page</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="FB_IMG_1645790566196.jpg" alt="Jane" style="width:100%; height:500px;">
      <div class="container">
        <h2>Ganesh Gorule</h2>
        <p class="title">CEO And Founder</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>ganeshgorule@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="FB_IMG_1645790592675.jpg" alt="Mike" style="width:100%; height:500px;">
      <div class="container">
        <h2>Akshay Zepale</h2>
        <p class="title">Website Developer</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>akshayzepale96@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
   <div class="column">
    <div class="card">
      <img src="IMG_20180206_201138.jpg" alt="Mike" style="width:100%; height:500px;">
      <div class="container">
        <h2>Amit Zepale</h2>
        <p class="title">Website Hoster</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>amit.zepale@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>
	
</body>
</html>