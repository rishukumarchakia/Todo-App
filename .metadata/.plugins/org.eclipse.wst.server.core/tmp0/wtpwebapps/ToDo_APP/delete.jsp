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
<%@page import ="abc.TodoDao"%>
<%String sid=request.getParameter("id");
int id=Integer.parseInt(sid);
int x=TodoDao.delete(id);
if(x==1)
{
	response.sendRedirect("viewtodo.jsp");
}


%>
</body>
</html>