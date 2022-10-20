<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management Application</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class ="header" >
<h1>Todo_App</h1> 
<a href="main.jsp">Logout</a> 
</div>

<h1 class=" text-dark">Add New Todo</h1>
<form action="todo.jsp">
 <label for="ToDo id">ToDo id</label>
    <input type="text" class="form-control" id="ToDo id" name="id"  placeholder="ToDo id">
    <br>
    <label for="ToDo Title">ToDo Title</label>
    <input type="text" class="form-control" id="ToDo Title" name="title"  placeholder="ToDo Title">
<br>
    <label for="ToDo Decription">ToDo Decription</label>
    <input type="text" class="form-control" id="ToDo Decription"  name="description" placeholder="ToDo Decription">
 <br>
 <label for="TargetDate">TargetDate</label>
 <input type="date" class="form-control" id="TargetDate" name="targetDate" placeholder="TargetDate">
  <br>
   <label for="ToDo Status">ToDo Status</label>
   <select id="ToDo Status" name="status" class="form-control">
    <br>
    <option selected>Choose...</option>
    <option>In Progress</option>
    <option>Not Progress</option>
      </select>
   <br>
    <input class='btn btn-success'  type="submit" value="Submit">
</form>
<div class='footer'>
project developed by :Rishu kumar
</div>
</body>
</html>