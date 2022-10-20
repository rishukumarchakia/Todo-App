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
<h1>Login Form</h1>
<form action="userlogin1.jsp">
    <label for="UserName">User Name:</label>
    <input type="text"  id="UserName"  name="UserName" placeholder="UserName">
  
  <br>
    <label for="password">Password:</label>
    <input type="password"  id="password" name="password" placeholder="password">

<br>
  <button class='btn btn-primary' type="submit" >Submit</button>
  </form>
 <div class='footer'>
project developed by :Rishu kumar
</div>
</body>
</html>