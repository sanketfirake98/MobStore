<%@page import="org.apache.catalina.connector.Response"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>

<style>
table, th {
  border: 1px solid black;
  border-collapse: collapse;
}

.button {
 background-color: #003c7a;
 font-weight: bold;
 color: white;
 border-radius: 8px;
 display: block;
 padding: 3.5%;
}

.button:hover {
 background-color: #e7e7e7; color: black
}

.page-color {
 display:inline;
 background-color: white
}

.header-align {
 overflow:hidden;
 background-color: #003c7a;
 padding-top: 10px;
 padding-left: 10px;
 padding-bottom: 10px;
 height:8%;
}

.logo-align {
 margin-right: auto;
 width: 4%;
}

.marquee-align {
 font-size: 30px;
 font-weight: bold;
 color: white;
 position: absolute;
 padding:0.5%;
}

.table-align {
padding-top:2%;
}

table {
 margin-left: auto;
 margin-right: auto;
 width:80%
}
 
.img-column {
 height:20%;
 width:20%;
} 

.img-name {
text-align: center;
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

<div class="table-align">
<table>
    

    
   <c:forEach items="${cart}" var="elements">  
   

  <tr> 
  
  <td class="img-column"><img style="width: 3cm; height: 5cm;" src="${elements.picPath}"></td>
   <td class="img-name"> ${elements.name} <div>${elements.price}</div> </td> 
   <td class="img-column"><form action="/Cart/delete/${elements.id}"><input type="submit" value="Delete"></input></form></td>
   </tr>
    </c:forEach> 
    
    
    </table>
    </div>
   The total amount is ${price}
   
 
<form action="/Cart/payment">
<input type="submit" value="Buy Now">

</form>
     
</body>
</html>