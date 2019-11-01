<%@ page language="java" import="java.sql.*" errorPage=""
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Completed</title>
</head>
<body>
	<%@page language="java"%>
	<%@page import="java.sql.*"%>
	<%@page import="java.sql.DriverManager.*"%>

	<%
		Class.forName("com.mysql.jdbc.Driver");

		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/record", "root", ""); // gets a new connection
		ResultSet rs = null;

		PreparedStatement ps;

		Statement st = c.createStatement();

		String sql = "Select * from test";
		ps = c.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while (rs.first()) {
	%>
	<p>Order Confirmed</p>
	<table width="992" border="1" cellspacing="0">
		<tr>
			<td width="66" align="center"><strong>LPG Gas Amount</strong></td>
			<td width="354" align="center"><strong>Payment Method
					Used</strong></td>
		</tr>
		<tr>
			<td height="75" align="center"><%=rs.getString(1)%></td>
			<td align="center"><%=rs.getString(2)%></td>
		</tr>
	</table>
	<%
		}
	%>


	<%
		Class.forName("com.mysql.jdbc.Driver");

		Connection c2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/record", "root", ""); // gets a new connection
		ResultSet rs2 = null;

		PreparedStatement ps2;

		Statement st2 = c2.createStatement();

		String sql2 = "Select * from userdetail where name=?";
		ps2 = c2.prepareStatement(sql2);
		ps2.setString(1, (String) session.getAttribute("name"));
		rs2 = ps2.executeQuery();
		while (rs2.next()) {
	%>
	<p>Order Confirmed</p>
	<table width="992" border="1" cellspacing="0">
		<tr>
			<td width="153" align="center"><strong>Delivery Address</strong></td>
			<td width="153" align="center"><strong>Name of
					Receiving Person</strong></td>
		</tr>
		<tr>
			<td align="center"><%=rs2.getString(6)%></td>
			<td align="center"><%=rs2.getString(1)%></td>
		</tr>
	</table>
	<%
		}
	%>

	<p>Thanks for shopping at T-Gases....your gas will be delivered
		soon...</p>
	<p>The reliable lpg you can trust</p>
</body>
</html>