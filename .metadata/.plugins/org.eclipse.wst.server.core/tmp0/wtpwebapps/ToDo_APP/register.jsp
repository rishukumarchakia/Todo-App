<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import ="abc.User"%>
<%@page import ="abc.UserDao"%>
<%
 String firstName = request.getParameter("firstName");
 String lastName  = request.getParameter("lastName");
 String userName  = request.getParameter("userName");
 String password  = request.getParameter("password");
 User u=new User();
 u.setFirstName(firstName);
 u.setLastName(lastName);
 u.setUserName(userName);
 u.setPassword(password);
 int i=UserDao.save(u);
 if(i==1)
{
	out.print("record save successfully");%>
	<%@include file ="main.jsp"%>
<% 
}
else
{
	out.print("record not save");
}
%>
</body>
</html>