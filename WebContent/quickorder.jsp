<%@ page language="java" import="java.sql.*" errorPage=""
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Order</title>
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

<body id="wrapper">
	<%@page language="java"%>

	<section id="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-7 col-xs-7 top-header-links">
					<ul class="contact_links">
						<li><i class="fa fa-phone"></i><a href="#">+263 783 602
								324</a></li>
						<li><i class="fa fa-envelope"></i><a href="#">info@t-gases.co.zw</a></li>
					</ul>
				</div>
				<div class="col-md-5 col-sm-5 col-xs-5 social">
					<ul class="social_links">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				</div>
			</div>
		</div>
		</div>

	</section>

	<header>
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="row">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">
							<h1>T-Gases</h1> <span>(Embednet Pvt Ltd)</span>
						</a>
					</div>
					<div id="navbar" class="collapse navbar-collapse navbar-right">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="business.jsp">Business</a></li>
							<li class="active"><a href="quickorder.jsp">Order</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="logout.jsp">Sign Out</a></li>
							<li><i class="fa fa-shopping-cart"></i></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</nav>
	</header>
	<!--/.nav-ends -->

	<br>
	<div class="row">
		<div class="col-md-12 col-sm-12">

			<%@page language="java"%>
			<%@page import="java.sql.*"%>
			<%@page import="java.sql.DriverManager.*"%>

			<%
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection c1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/record", "root", ""); // gets a new connection
	 		ResultSet rs1 = null;

			PreparedStatement ps1;
		
			Statement st1 = c1.createStatement();
			
			String sql1 = "Select * from rate where id=1";
				ps1 = c1.prepareStatement(sql1);
				
			rs1 = ps1.executeQuery();
			while(rs1.next())
				{

			%>

			<h4 align="center">Current rates per 1Kg</h4>
			<table class="table table-hover">
				<tr>
					<td width="150" align="center"><strong>USD</strong></td>
					<td width="150" align="center"><strong>Rand</strong></td>
					<td width="150" align="center"><strong>ZW$</strong></td>
				</tr>
				<tr>
					<td align="center"><%=rs1.getString(2) %></td>
					<td align="center"><%=rs1.getString(3) %></td>
					<td align="center"><%=rs1.getString(4) %></td>
				</tr>
			</table>
			<%}%>

		</div>
	</div>

	<!--/.nav-ends -->
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


	<hr />
	<p>
		<%
			String uname = (String) session.getAttribute("name");
			if (session.getAttribute("name") != null) {
				session.setAttribute("product", request.getParameter("name"));
				ps.setString(1, uname);
				rs = ps.executeQuery();
		%>

	</p>

	<%
		}
	%>



	<div class="row">


		<div class="form-bottom">
			<form action="quickorderprocess.jsp" method="post">
				<div class="col-md-12 col-sm-12">
					<h5>Please fill in below.</h5>
					<div class="col-md-6 col-sm-12">
						General LPG Order Details
						<div class="input-group form-group">
							<span class="input-group-addon" id="basic-addon1"><i
								class="fa fa-user"></i></span> <select type="text" class="form-control"
								name="amount" placeholder="5kg" aria-describedby="basic-addon1">
								<option>5kg</option>
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
								<option>cash</option>
								<option>ecocash</option>
								<option>swipe</option>
							</select>
						</div>

						<div class="input-group form-group">
							Walk in Customer<input type="radio" name="choice"> To
							Deliver Order<input type="radio" name="choice">
						</div>

						<div class="input-group form-group">
							<span class="input-group-addon" id="basic-ad	don1">Total</span> <input
								type="text" class="form-control" name="total"
								aria-describedby="basic-addon1">

						</div>

					</div>

					<div class="col-md-6 col-sm-12">
						<div class="input-group form-group">
							<span class="input-group-addon" id="basic-ad	don1">address</span> <input
								type="text" class="form-control" name="address"
								aria-describedby="basic-addon1">
						</div>

						<div class="input-group form-group">
							<span class="input-group-addon" id="basic-ad	don1">Receiver</span> <input
								type="text" class="form-control" name="reciever"
								aria-describedby="basic-addon1">
						</div>
					</div>

				</div>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="submit" class="btn btn-primary">Process Order!</button>

		</form>
	</div>


</body>
<br>

<section id="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-3 col-xs-12 block">
				<div class="footer-block">
					<h4>Address</h4>
					<hr />
					<div class="mapouter">
						<div class="gmap_canvas">
							<iframe width="180" height="180" id="gmap_canvas"
								src="https://maps.google.com/maps?q=epworth%20zimbabwe&t=&z=9&ie=UTF8&iwloc=&output=embed"
								frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
							Google Maps Generator by <a href="https://www.embedgooglemap.net">embedgooglemap.net</a>
						</div>
						<style>
.mapouter {
	position: relative;
	text-align: right;
	height: 180px;
	width: 180px;
}

.gmap_canvas {
	overflow: hidden;
	background: none !important;
	height: 180px;
	width: 180px;
}
</style>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-3 col-xs-12 block">
				<div class="footer-block">
					<h4>Useful Links</h4>
					<hr />
					<ul class="footer-links">
						<li><a href="business.jsp">Business</a></li>
						<li><a href="login.jsp">Shop</a></li>
						<li><a href="contact.jsp">Contact</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="login.jsp">Sign In</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-3 col-sm-3 col-xs-12 block">
				<div class="footer-block">
					<h4>Community</h4>
					<hr />
					<ul class="footer-links">
						<li><a href="#">Newsletter</a></li>
						<li><a href="#">Promotions</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-3 col-sm-3 col-xs-12 <block></block>">
				<div class="footer-block">
					<h4>Recent Posts</h4>
					<hr />
					<ul class="footer-links">
						<li><a href="#" class="post">Sign up for our monthly
								newsletter</a>
							<p class="post-date">01 Sep, 2019</p></li>
						<li><a href="#" class="post">Order online Today>
								<p class="post-date">29 Aug, 2019</p></li>
						<li><a href="#" class="post">Promotion Month</a>
							<p class="post-date">12 Aug, 2019</p></li>

					</ul>
				</div>
			</div>
		</div>
	</div>


</section>

<section id="bottom-footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12 btm-footer-links">
				<a href="#">Privacy Policy</a> <a href="#">Terms of Use</a>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12 copyright">
				Powered by <a href="#">Orion-Tech</a> | 2019 &copy <a href="#">All
					rights reserved</a>
			</div>
		</div>
	</div>
</section>



</div>
</html>