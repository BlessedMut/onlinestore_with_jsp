<%@ page language="java" import="java.sql.*" errorPage="" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page language="java" %>
		<%@page import="java.sql.*" %>
			<%@page import="java.sql.DriverManager.*" %>
				
				<table width="993" height="102" border="0">
					<tr>
						<td width="251" height="96"><img src="#" alt="logo" width="251" height="88" /></td>
						<td width= "726" style="text-align : right;">T-Gases - <a href="contact.jsp"> Contact us</a> | <a href="index.jsp">Home</a> | 
							<%
								if(session.getAttribute("uname")==null){
									%>
								<a href="login.jsp">Login</a>
								<%}else {
									%>
									<a href="logout.jsp">Logout</a>
									<%}%>
							%>
						</td>
					</tr>
				</table>
			<hr />
			<p>	Edit & <strong><span>Confirm</span></strong> your details </p>
			
			<%
				PreparedStatement ps;
				Connection conn;
				ResultSet rs=null;
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","");
				
					Statement st = conn.createStatement();
					String sql="Select * from userdetail where name=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, request.getParameter("mid"));
					rs = ps.executeQuery();
					while(rs.next())
					{
						%><form action="updatemem.jsp">
							<table width="473" height="138" border="1">
								<tr>
									<td width="92" height="33" align="right">Phone No.</td>
									<td width="365"><input type="text" name="phone" value=<%=rs.getString(6)%> /></td>
								</tr>
								
								<tr>
									<td align="right">Address</td>
									<td><input type="text" name="address" size="120" value=<%=rs.getString(5)%> ></td>
								</tr>
							</table>
							<p><input type="Submit" value="Confirm"/>
								<input type="hidden" name="mid1" value=<%=rs.getString(2) %> />
								<%} %>
							</p>
						</form>
					}
			%>
				
				
</body>
</html>