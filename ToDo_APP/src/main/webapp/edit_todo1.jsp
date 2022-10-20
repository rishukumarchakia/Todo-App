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
<%
String sid=request.getParameter("id");
int id=Integer.parseInt(sid);
String title=request.getParameter("title");
String description=request.getParameter("description");
String status=request.getParameter("status");
String targetdate=request.getParameter("targetdate");
Todo e= new Todo();
e.setId(id);
e.setTitle(title);
e.setDescription(description);
e.setStatus(status);
e.setTargetDate(targetdate);
int s =TodoDao.update(e);
if(s>0)
{
	response.sendRedirect("viewtodo.jsp");
	
}
else
{
	out.println("sorry!unable to update record");
}


%>
</body>
</html>