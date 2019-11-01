<%@ page language="java" import="java.sql.*" errorPage="" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*" %>
		Welcome <%= session.getAttribute("uname")%>, 
		<p>Click <a href="home.jsp">here</a> to go to the Home Page.</p>
</body>
</html>