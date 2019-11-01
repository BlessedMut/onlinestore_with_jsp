<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
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
			
			<%
				String pid=null;
				String category=request.getParameter("category");
				String type=request.getParameter("type");
				PreparedStatement ps;
				Connection con;
				ResultSet rs=null,rs1=null,rs2=null;
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t-gases","system","sizgoom1");
				
				Statement st=con.createStatement();
				if(type=="brand"){
					ps=con.prepareStatement("select * from mtable where company=?");
					ps.setString(1, category);
				}/*else if(type=="mtype"){
					if(category=="and")
					{
						
					}
					}
				}
			
			%>

</body>
</html>