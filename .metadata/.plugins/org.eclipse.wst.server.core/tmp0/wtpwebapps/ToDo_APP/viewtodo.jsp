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
<a href="todoform1.jsp">AddnewTodo</a>
<a href="main.jsp">Logout</a> 
</div>
<%@ page import ="java.sql.*"%>
<%@ page import ="java.util.*"%>
<%@ page import ="abc.Todo" %>
<%@ page import ="abc.TodoDao"%>
<% 
out.println("<h1>TodoList</h1>");
List<Todo>list=TodoDao.getAllTodo();
out.print("<table border='1'Width='100%'>");
out.print("<tr><th>Title</th><th>Description</th><th>TargetDate</th><th>Status</th><th>Edit</th><th>Delete</th></tr>");
for(Todo e:list)
 {
out.print("<tr><td>"+e.getTitle()+"</td><td>"+e.getDescription()+"</td><td>"+e.getTargetDate()+"</td><td>"+e.getStatus()+"</td><td><a href='edit_todo.jsp?id="+e.getId()+"'>edit</a></td><td><a href='delete.jsp?id="+e.getId()+"'>delete</a></td></tr>");
 }
   out.print("</table>");
 
%>
<div class='footer'>
project developed by :Rishu kumar
</div>
</body>
</html>