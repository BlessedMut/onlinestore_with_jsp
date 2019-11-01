<%@page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
session.setAttribute("name", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
	
</body>
</html>