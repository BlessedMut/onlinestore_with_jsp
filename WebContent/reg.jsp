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
	String pass = request.getParameter("pass");
    String name = request.getParameter("name");    
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String phone = request.getParameter("phone");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into userdetail(name, id, password, phone, dob, address) values ('" + name + "','" + id + "','" + password + "','" + phone + "','" + dob + "', '"+ address +"')");
    if (i > 0) {
            //session.setAttribute("name", name);
            response.sendRedirect("welcome.jsp");
           // out.print("Registration Successfull!"+"<a href='login.jsp'>Go to Login</a>");
        } else {
            response.sendRedirect("index.jsp");
        }
    %>
</body>
</html>