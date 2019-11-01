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
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
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
			<h2>Update Rate</h2>
		</div>
	</div>
</section>
<br>

<form method="post" action="rateconf.jsp">
	<center>
		<table width="30%" cellpadding="5">
			<thead align="center">
				<tr>
					<th colspan="2">Enter Rate Information Here</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>USD</td>
					<td><input type="text" name="usd" value="" /></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td>Rand</td>
					<td><input type="text" name="rand" value="" /></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td>RTGS$</td>
					<td><input type="text" name="rtgs" value="" /></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit"
						class="btn btn-primary" /></td>
					<td><input type="reset" value="Reset" class="btn btn-danger" /></td>
				</tr>
			</tbody>
		</table>
	</center>
</form>
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
</html>