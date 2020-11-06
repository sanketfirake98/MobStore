<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="display:inline; background-color: #f5f5f5;">
<div style="overflow:hidden; background-color: #003c7a; padding-top: 10px; padding-left: 10px; padding-bottom: 10px; height:8%;">
<div>
 <img src="images/logo1.png" style="margin-right: auto; width: 4%;">
 <marquee style="font-size: 30px; font-weight: bold; color: white; position: fixed; padding:0.5%" direction = "right">WELCOME TO MOB-STORE..</marquee>
</div>
</div>
<div style= "overflow: hidden; padding: 20px 10px; height:5%; text-align:center; padding-top: 1%;">
    <a style="font-size: 25px; font-weight: bold; color: black;" href="/registration">Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="font-size: 25px; font-weight: bold; color: black;" href="/login">Login</a>
</div>
<div>
  <img style="display: block; width: 100%; padding-top: 3%" class="mySlides" src="images/image_2.png">
  <img style="display: block; width: 100%; padding-top: 3%" class="mySlides" src="images/image_1.jpg">
</div>
</body>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000); // Change image every 2 seconds
}
</script>
</html>