<%@ page language="java" import="java.sql.*" errorPage="" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
	<%@page language="java" %>
		<%@page import="java.sql.*" %>
			<%@page import="java.sql.DriverManager.*" %>
				<%
					String pid=request.getParameter("product");
					String hname="Grand";
					PreparedStatement ps;
					
					Connection conn;
					ResultSet rs=null;
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/record", "root", ""); 
					
					Statement st =conn.createStatement();
						ps=conn.prepareStatement("select * from mtable where prod_id=?");
						ps.setString(1, pid);
						rs = ps.executeQuery();
					while(rs.next())
					{
					%>
				</p><%=rs.getString(3) %> <%=rs.getString(2) %></p>
					<%}
						ps=conn.prepareStatement("select * from pics where pic_id=?");
						ps.setString(1, pid);
						rs = ps.executeQuery();
						while(rs.next())
						{
						%>
	</p>
	<table width="997" height="399" border="0">
		<tr>
			<td width="358"><img src=<%=rs.getString(2) %> width="200" height="300" alt=hname/></td>
			<%}
			ps=conn.prepareStatement("select * from mtable where prod_id=?");
				ps.setString(1,pid);
				rs = ps.executeQuery();
				while(rs.next())
				{
					%>
				<td width="623"><table width="466" height="200" border="0">
					<tr>
						<td width="179">Model Name:</td>
		</tr>
	</table>
</body>
</html>