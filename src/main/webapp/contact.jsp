<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
padding: 0;
  margin: 0;
  background: #3456;
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
body, button, input, textarea  {
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  letter-spacing: 1.4px;
  position: relative;
}
.background {
  display: flex;
  min-height: 100vh;
}

.container {
	width: 800px;
  flex: 0 1 700px;
  margin: auto;
  padding: 150px 100px 0 100px;
}

.screen {
  position: relative;
  background: #3e3e3e;
  border-radius: 15px;
}

.screen:after {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 20px;
  right: 20px;
  bottom: 0;
  border-radius: 15px;
  box-shadow: 0 20px 40px rgba(0, 0, 0, .4);
  z-index: -1;
}

.screen-header {
  display: flex;
  align-items: center;
  padding: 10px 20px;
  background: #4d4d4f;
  border-top-left-radius: 15px;
  border-top-right-radius: 15px;
}

.screen-header-left {
  margin-right: auto;
}

.screen-header-button {
  display: inline-block;
  width: 8px;
  height: 8px;
  margin-right: 3px;
  border-radius: 8px;
  background: white;
}

.screen-header-button.close {
  background: #ed1c6f;
}

.screen-header-button.maximize {
  background: #e8e925;
}

.screen-header-button.minimize {
  background: #74c54f;
}

.screen-header-right {
  display: flex;
}

.screen-header-ellipsis {
  width: 3px;
  height: 3px;
  margin-left: 2px;
  border-radius: 8px;
  background: #999;
}

.screen-body {
  display: flex;
}

.screen-body-item {
  flex: 1;
  padding: 50px;
}

.screen-body-item.left {
  display: flex;
  flex-direction: column;
}

.app-title {
  display: flex;
  flex-direction: column;
  position: relative;
  color: #ea1d6f;
  font-size: 26px;
}

.app-title:after {
  content: '';
  display: block;
  position: absolute;
  left: 0;
  bottom: -10px;
  width: 25px;
  height: 4px;
  background: #ea1d6f;
}

.app-contact {
  margin-top: auto;
  font-size: 13px;
  color: #888;
}

.app-form-group {
  margin-bottom: 15px;
}

.app-form-group.message {
  margin-top: 40px;
}

.app-form-group.buttons {
  margin-bottom: 0;
  text-align: right;
}

.app-form-control {
  width: 100%;
  padding: 10px 0;
  background: none;
  border: none;
  border-bottom: 1px solid #666;
  color: #ddd;
  font-size: 14px;
  text-transform: uppercase;
  outline: none;
  transition: border-color .2s;
}

.app-form-control::placeholder {
  color: #666;
}

.app-form-control:focus {
  border-bottom-color: #ddd;
}

.app-form-button {
  background: none;
  border: none;
  color: #ea1d6f;
  font-size: 14px;
  cursor: pointer;
  outline: none;
}

.app-form-button:hover {
  color: #b9134f;
}

.credits {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
  color: #ffa4bd;
  font-family: 'Roboto Condensed', sans-serif;
  font-size: 16px;
  font-weight: normal;
}

.credits-link {
  display: flex;
  align-items: center;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}

.dribbble {
  width: 20px;
  height: 20px;
  margin: 0 5px;
}

@media screen and (max-width: 520px) {
  .screen-body {
    flex-direction: column;
  }

  .screen-body-item.left {
    margin-bottom: 30px;
  }

  .app-title {
    flex-direction: row;
  }

  .app-title span {
    margin-right: 12px;
  }

  .app-title:after {
    display: none;
  }
}

@media screen and (max-width: 600px) {
  .screen-body {
    padding: 40px;
  }

  .screen-body-item {
    padding: 0;
  }
}
	
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/contact_servlet" method="post">
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
		
		  <div class="container">
		    <div class="screen">
		      <div class="screen-body">
		        <div class="screen-body-item left">
		          <div class="app-title">
		            <span>CONTACT</span>
		            <span>US</span>
		          </div>
		          <div class="app-contact">CONTACT INFO : 9594664361</div>
		        </div>
		        <div class="screen-body-item">
		          <div class="app-form">
		            <div class="app-form-group">
		              <input type="text" class="app-form-control" placeholder="FUll NAME" name="name" required/>
		            </div>
		            <div class="app-form-group">
		              <input type="email" class="app-form-control" placeholder="EMAIL" name="email" required/>
		            </div>
		            <div class="app-form-group">
		              <input type="text" class="app-form-control" placeholder="CONTACT NO" name="number" required/>
		            </div>
		            <div class="app-form-group message">
		              <textarea class="app-form-control" placeholder="MESSAGE" rows="4" cols="50" name="comment" form="usrform" required/></textarea>
		            </div>
		            <div class="app-form-group buttons">
		            	 <button class="app-form-button">SEND</button>
		              <button class="app-form-button">CANCEL</button>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
</form>
</body>
</html>