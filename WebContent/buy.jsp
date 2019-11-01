<%@ page language="java" import="java.sql.*" errorPage=""
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quick Order</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="scss/main.css">
<link rel="stylesheet" href="scss/skin.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="./script/index.js"></script>
</head>
<body>
	<%@page language="java"%>
	<%@page import="java.sql.*"%>
	<%@page import="java.sql.DriverManager.*"%>
	<%
		PreparedStatement ps;
		Connection conn;
		ResultSet rs = null;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/record", "root", "");

		Statement st = conn.createStatement();
		String sql = "Select * from userdetail where name=?";
		ps = conn.prepareStatement(sql);
	%>

	<table width="993" height="102" border="0">
		<tr>
			<td width="251" height="96"><img src="#" alt="logo" width="251"
				height="88" /></td>
			<td width="726" style="text-align: right;">T-Gases - <a
				href="contact.jsp"> Contact us</a> | <a href="index.jsp">Home</a> |
				<%
				if (session.getAttribute("uname") == null) {
			%> <a href="login.jsp">Login</a> <%
 	} else {
 %> <a href="logout.jsp">Logout</a> <%
 	}
 %> %>
			</td>
		</tr>
	</table>
	<hr />
	<p>
		<%
			String uname = (String) session.getAttribute("name");
			if (session.getAttribute("name") != null) {
				session.setAttribute("product", request.getParameter("name"));
				ps.setString(1, uname);
				rs = ps.executeQuery();
		%>
		Please <span><strong>confirm</strong> your latest information,
			or if any of the info, which you see is incorrect then you may press
			the <strong>Edit</strong> button. </span>
		<button name="edit">Edit</button>
		<%
			while (rs.next()) {
		%>
	</p>
	<table width="981" height="108" border="0" cellspacing="0">
		<tr>
			<td width="134" height="29">&nbsp;</td>
			<td width="303" align="center"><form action="buyedit.jsp">
					<input type="Submit" name="Edit" value="Edit"> <input
						type="hidden" name="mid" value=<%=rs.getString(2)%> />
				</form></td>
		</tr>
		<tr>
			<td height="29" align="right"><strong>Phone No.</strong></td>
			<td><%=rs.getString(6)%></td>
		</tr>
		<tr>
			<td height="50" align="right"><strong>Address</strong></td>
			<td><%=rs.getString(5)%></td>
		</tr>
	</table>
	<%
		}
	%>
	<p>
	<form action="orderconf.jsp">
		<input type="Submit" name="Confirm" value="Confirm" />
	</form>
	</p>
	<p>
		<%
			} else {
				session.setAttribute("product", request.getParameter("name"));
		%>
	</p>

	<div class="row">

		<div class="form-bottom">
			<form action="orderconfig.jsp" method="post">
				<div class="col-md-12 col-sm-12">
					<div class="col-md-6 col-sm-12">
						General LPG Order Details
						<div class="input-group form-group">
							<span class="input-group-addon" id="basic-addon1"><i
								class="fa fa-user"></i></span> <select type="text" class="form-control"
								name="amount" placeholder="5kg" aria-describedby="basic-addon1">
								<option>10kg</option>
								<option>15kg</option>
								<option>20kg</option>
								<option>25kg</option>
								<option>30+kg</option>
							</select>
						</div>
						<div class="input-group form-group">
							<span class="input-group-addon" id="basic-addon1"><i
								class="fa fa-user"></i></span> <select type="text" class="form-control"
								name="payment" placeholder="cash"
								aria-describedby="basic-addon1">
								<option>ecocash</option>
								<option>swipe</option>
							</select>
						</div>
					</div>

					<div class="col-md-6 col-sm-12">
						Delivery Details
						<div class="input-group form-group">

							<textarea rows="4" cols="70" class="form-control" name="address"
								placeholder="Address"></textarea>

						</div>
						<div class="input-group form-group">
							<span class="input-group-addon" id="basic-addon1"><i
								class="fa fa-user"></i></span> <input type="text" class="form-control"
								name="amount" placeholder="name of reciever"
								aria-describedby="basic-addon1">
						</div>
					</div>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary">Process Order!</button>

			</form>
		</div>
	</div>
	</div>
	<%}%>

</body>
</html>