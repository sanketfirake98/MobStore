<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
 <body style="display:inline; background-color: #f5f5f5;">
<div style="overflow:hidden; background-color: #003c7a; padding-top: 10px; padding-left: 10px; padding-bottom: 10px; height:8%;">
<div>
 <img style="margin-right: auto; width: 4%;" src="images/logo1.png"/>
 <marquee style="font-size: 35px; font-weight: bold; color: white; position: fixed; padding:0.5%" direction = "right">WELCOME TO MOB-STORE..</marquee>
</div>
</div>

<div style="padding-top:5%; margin:auto; display:table; width: 70%;">
<form action="btnRegisterClick" method="post">
<fieldset>
    <legend style="font-weight: bold;">Registration:</legend>
    <div style="float: left; width: 25%; margin-top: 6px; font-weight: bold;">
      <label for="fname">Username:</label>
    </div>
   <div style="float: left; width: 75%; margin-top: 6px; font-weight: bold;">
      <input type="text" id="user_name" name="user_name" placeholder="Username" size="50">
    </div>
</br></br>
    <div style="float: left; width: 25%; margin-top: 6px; font-weight: bold;">
      <label for="email">Email:</label>
    </div>
    <div style="float: left; width: 75%; margin-top: 6px;">
      <input type="email" id="user_email" name="user_email" placeholder="Email" size="50" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
    </div>
</br></br>
    <div style="float: left; width: 25%; margin-top: 6px; font-weight: bold;">
      <label for="password">Password:</label>
    </div>
    <div style="float: left; width: 75%; margin-top: 6px;">
      <input type="password" id="user_password" name="user_password" placeholder="Password.." size="50"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
    </div>
</br></br></br>
<div style="text-align:center">
  <input style="background-color: #003c7a; padding: 2%; font-weight: bold; color: white; border-radius: 8px;" type="submit" value="Register"></div>
</fieldset>
</form>
</div>
</body>
</html>