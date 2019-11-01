<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
    String usd = request.getParameter("usd");    
    String rand = request.getParameter("rand");
    String rtgs = request.getParameter("rtgs");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("update rate set usd='" + usd + "',rand='" + rand + "',rtgs='" + rtgs +"' where id=1");
    if (i > 0) {
        //session.setAttribute("name", name);
        response.sendRedirect("adminpanel.jsp");
       // out.print("Rates have been successfully updated!");
    } else {
        response.sendRedirect("rate.jsp");
     // out.print("Snap...something went wrong, please contact system Administrator!");
    }
%>
</body>
</html>