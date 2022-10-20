<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import ="java.sql.*"%>
<%String userName=request.getParameter("UserName");
String password=request.getParameter("password");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","6202281767");     
    PreparedStatement p= con.prepareStatement("select * from user where username=? and password=?");
    p.setString(1, userName);
    p.setString(2, password);
    ResultSet i= p.executeQuery();
    if(i.next())
    {
    response.sendRedirect("viewtodo.jsp");
    }
    else
    {
    out.println("Login not sucess");
    }
}
catch(Exception E)
{
	
}
%>
</body>
</html>