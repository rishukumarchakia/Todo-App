<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class ="header" >
<h1>Todo_App</h1> 
<a href="userlogin.jsp">Login</a>  <a href="registerform1.jsp">Sign Up</a>
</div>

<h1>User Register</h1>
<form action="register.jsp">

    <label for="First Name">First Name:</label>
    <input type="text"  id="First Name" name="firstName" placeholder="First Name">
 
 <br>
    <label for="Last Name">Last Name:</label>
    <input type="text" id="Last Name" name="lastName" placeholder="Last Name">
 
 <br>
    <label for="User name">User Name:</label>
    <input type="text"  id="User name"  name="userName" placeholder="User name">
  
  <br>
    <label for="exampleInputPassword1">Password:</label>
    <input type="password"  id="exampleInputPassword1" name="password" placeholder="Password">

<br>
  <button class='btn btn-primary' type="submit" >Submit</button>
</form>
<div class='footer'>
project developed by :Rishu kumar
</div>
</body>
</html>