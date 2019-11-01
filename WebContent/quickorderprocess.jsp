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
	String amount = request.getParameter("amount");
    String payment = request.getParameter("payment");    
	String address = request.getParameter("address");
	String reciever = request.getParameter("reciever");
	java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); 
	String CDate = df.format(new java.util.Date());

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into orders(amount, payment, address, reciever, CDate) values ('" + amount + "','" + payment + "', '" + address +"', '"+ reciever +"', '"+ CDate +"')");
    if (i > 0) {
            //session.setAttribute("name", name);
            response.sendRedirect("quickorderconf.jsp");
           
        } else {
            response.sendRedirect("index.jsp");
        }
    %>
</body>
</html>