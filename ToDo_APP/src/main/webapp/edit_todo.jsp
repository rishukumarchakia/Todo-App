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
<%@page import ="abc.Todo"%>
<%@page import ="abc.TodoDao"%>

<%
out.println("<h1>Edit Todo</h1>");
String sid=request.getParameter("id");
int id=Integer.parseInt(sid);
Todo e=TodoDao.getTodoById(id);
out.print("<form action='edit_todo1.jsp'>");
out.print("<table>");
out.print("<tr><td></td><td><input type='hidden' name='id' value='"+e.getId()+"'/></td></tr>");
out.print("<tr><td>Title:</td><td><input type='text' name='title' value='"+e.getTitle()+"'/></td></tr>");
out.print("<tr><td>Description:</td><td><input type='text' name='description' value='"+e.getDescription()+"'/></td></tr>");
out.print("<tr><td>Status:</td><td><input type='text' name='status' value='"+e.getStatus()+"'/></td></tr>");
out.print("<tr><td>targetDate:</td><td><input type='text' name='targetdate' value='"+e.getTargetDate()+"'/></td></tr>");
out.print("<tr><td colspan='2'><input class='btn btn-primary' type='submit' value='Edit&Save'/></td></tr>");
out.print("</table>");
out.print("</form>");
%>
<div class='footer'>
project developed by :Rishu kumar
</div>
</body>
</html>