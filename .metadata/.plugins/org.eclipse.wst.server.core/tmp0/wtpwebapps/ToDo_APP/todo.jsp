<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import ="abc.Todo"%>
<%@page import ="abc.TodoDao"%>
<%String id=request.getParameter("id");
int id1=Integer.parseInt(id);
String title = request.getParameter("title");
String description =request.getParameter("description");
String status =request.getParameter("status");
String targetDate= request.getParameter("targetDate");
Todo t=new Todo();
t.setId(id1);
t.setTitle(title);
t.setDescription(description);
t.setStatus(status);
t.setTargetDate(targetDate);
int i=TodoDao.save1(t);
if(i==1)
{
	out.print("Todo add  successfully");%>
	<%@include file ="viewtodo.jsp"%>
<% 	
}
else
{
	out.print("record not save");
}

%>
</body>
</html>