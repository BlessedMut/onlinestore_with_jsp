<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Login</title>
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

	<%@ page import="java.sql.*"%>
	<%
    String name = request.getParameter("name");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from userdetail where name='" + name + "' and password='" + password + "'");
    if (rs.next()) {
        session.setAttribute("name", name);
        //out.println("welcome " + name);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>


	<section id="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-7 col-sm-7 col-xs-7 top-header-links">
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
							<li><a href="rate.jsp">Rates</a></li>
							<li><a href="vieworders.jsp">Orders</a></li>
							<li><a href="about.jsp">NewsLetter</a></li>
							<li><a href="login.jsp">Sign Out</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</nav>
	</header>
	<!--/.nav-ends -->

	<section id="top_banner">
		<div class="banner">
			<div class="inner text-center">
				<h2>Admin Panel</h2>
			</div>
		</div>
	</section>



	<section id="login-reg">
		<div class="container">
			<!-- Top content -->
			<div class="row">
				<div class="col-md-6 col-sm-12 forms-right-icons">
					<div class="section-heading">
						<h2>
							Sign In With <span>Us</span>
						</h2>
						<p class="subheading">Lorem ipsum dolor sit amet sit legimus
							copiosae instructior ei ut vix denique fierentis ea saperet
							inimicu ut qui dolor oratio mnesarchum.</p>
					</div>
					<div class="row">
						<div class="col-xs-2 icon">
							<i class="fa fa-bullhorn"></i>
						</div>
						<div class="col-xs-10 datablock">
							<h4>Online Shopping</h4>
							<p>Lorem ipsum dolor sit amet sit legimus copiosae
								instructior ei ut vix denique fierentis ea saperet inimicu ut
								qui dolor oratio mnesarchum.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-2 icon">
							<i class="fa fa-support"></i>
						</div>
						<div class="col-xs-10 datablock">
							<h4>Customer Support</h4>
							<p>Lorem ipsum dolor sit amet sit legimus copiosae
								instructior ei ut vix denique fierentis ea saperet inimicu ut
								qui dolor oratio mnesarchum.</p>
						</div>
					</div>

				</div>
				<div class="col-md-6 col-sm-12">

					<div class="form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>Login to our site</h3>
								<p>Enter username and password to log on:</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-key"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form action="loginconf.jsp" method="post">
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-user"></i></span> <input type="text"
										class="form-control" name="name" placeholder="Username"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-unlock"></i></span> <input type="password"
										class="form-control" name="password" placeholder="Password"
										aria-describedby="basic-addon1">
								</div>
								<input type="submit" value="Login">
							</form>
							<p>
								Dont have an account yet. Click here to <span><a
									href="registration.jsp">register</a></span>
							</p>
						</div>
					</div>


				</div>
	</section>

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
								Google Maps Generator by <a
									href="https://www.embedgooglemap.net">embedgooglemap.net</a>
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
							<li><a href="order.jsp">Place Order</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="registration.jsp">Sign In</a></li>
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
							<li><a href="#" class="post">Sign Up for our monthly
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
</html>