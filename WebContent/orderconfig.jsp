<%@ page language="java" import="java.sql.*" errorPage=""
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page language="java"%>
	<%@page import="java.sql.*"%>
	<%@page import="java.sql.DriverManager.*"%>

	<%
		Class.forName("org.mariadb.jdbc.Driver");
			
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/record", "root", ""); // gets a new connection
	 		ResultSet rs = null;

			PreparedStatement ps;
		
			Statement st = c.createStatement();
			
			String sql = "Select * from mtable where prod_id=?";
				ps = c.prepareStatement(sql);
				ps.setString(1, (String)session.getAttribute("product"));
			rs = ps.executeQuery();
			while(rs.next())
				{

			%>
			<p>Order Confirmed</p>
			<table width="992" border="1" cellspacing="0">
			<tr>
				<td width="66" align="center"><strong>Item ID</strong></td>
				<td width="354" align="center"><strong>Product Name &amp; Model</strong></td>
				<td width="153" align="center"><strong>Brand</strong></td>
				<td width="153" align="center"><strong>Shipping Charges</strong></td>
				<td width="153" align="center"><strong>Total Cost</strong></td>
			</tr>
			<tr>
				<td height="75" align="center"><%=rs.getString(1) %></td>
				<td align="center"><%=rs.getString(2) %></td>
				<td align="center"><%=rs.getString(3) %></td>
				
				<td align="center">RS. 0</td>
				<td align="center">RS. <%=rs.getString(4) %></td>
			</tr>
			</table>
			<%}%>
	<p>Thanks for shopping at T-Gases....your gas will be delivered soon...</p>
	<p>The reliable lpg you can trust</p>
</body>
</html>