<%@page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from userdetail where name='" + name + "' and password='" + password + "'");
    if (rs.next()) {
        session.setAttribute("name", name);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("quickorder.jsp");
    } else {
    	response.sendRedirect("login.jsp");
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
				
				
						
</body>
</html>