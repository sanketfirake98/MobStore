<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

.header-align {
 overflow:hidden;
 background-color: #003c7a;
 padding-top: 10px;
 padding-left: 10px;
 padding-bottom: 10px;
 height:8%;
}

.marquee-align {
 font-size: 30px;
 font-weight: bold;
 color: white;
 position: absolute;
 padding:0.5%;
 }
 
 
 .logo-align {
 margin-right: auto;
 width: 4%;
}

.page-color {
 display:inline;
 background-color: white
}

 


</style>
</head>
<body class="page-color">
<div class="header-align">
<div>
 <img src="http://localhost:8080/images/logo1.png" class="logo-align">
 <marquee direction = "right" class="marquee-align">WELCOME TO MOB-STORE..</marquee>
</div>
</div>


 <c:forEach items="${youOrd}" var="elements"> 
  
 
 
 Your order id is <b>${elements.id}</b> <br>
 Payment of<b> Rs ${elements.price} </b>has been successful <br>
 Shipping Address is <b>${elements.address}</b><br>
 We will reach you within 4 to 5 business days<br><br><br>
 
 </c:forEach> 
 
</body>
</html>