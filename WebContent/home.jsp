<%@page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
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
							<li class="active"><a href="quickorder.jsp">Quick Order</a></li>
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



	<section id="top_banner">
		<div class="banner">
			<div class="inner text-center">
				<h2>Place your order with us today</h2>
			</div>
		</div>
		<div class="page_info">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-8 col-xs-6">
						<h4>Categories</h4>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6" style="text-align: right;">
						Home<span class="sep"> / </span><span class="current">Order</span>
					</div>
				</div>
			</div>
		</div>

		</div>
	</section>

	<section id="portfolio">
		<div class="container">
			<div class="row"></div>
			<div class="row">
				<div class="col-md-3">
					<h5>
						<strong>Gas Cylinders</strong>
					</h5>
					<p>Green</p>
					<p>Blue</p>
					<p>Purple</p>

					<br>
					<h5>
						<strong>OutDoor Stands</strong>
					</h5>
					<p>Green</p>
					<p>Blue</p>
					<p>Purple</p>
				</div>

				<div class="col-md-9">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
						<form action="product.jsp" method="post">
						<input type="hidden" name="product" value="G0001">
						<input name="buy" type="image" value="grand" img alt="" src="img/im3.jpg" width="250" height="170">
									
									<div class="portfolio-hover">
										<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
										<a class="portfolio-zoom" href="#"><i class="fa fa-search"></i></a>
									</div>
								
								<!-- End portfolio-head -->
								<div class="portfolio-content">
									<h5 class="title">
										Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
									</h5>

								</div>
								<!-- End portfolio-content -->
							
						</form>
						<!-- End portfolio-item -->
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
						<div class="portfolio-one">
							<div class="portfolio-head">
								<div class="portfolio-img">
									<img alt="" src="img/im3.jpg">
								</div>
								<div class="portfolio-hover">
									<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
									<a class="portfolio-zoom prettyPhoto" href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>
							<!-- End portfolio-head -->
							<div class="portfolio-content">
								<h5 class="title">
									Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
								</h5>

							</div>
							<!-- End portfolio-content -->
						</div>
						<!-- End portfolio-item -->
					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
							<div class="portfolio-one">
								<div class="portfolio-head">
									<div class="portfolio-img">
										<img alt="" src="img/im3.jpg">
									</div>
									<div class="portfolio-hover">
										<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
										<a class="portfolio-zoom" href="#"><i class="fa fa-search"></i></a>
									</div>
								</div>
								<!-- End portfolio-head -->
								<div class="portfolio-content">
									<h5 class="title">
										Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
									</h5>

								</div>
								<!-- End portfolio-content -->
							</div>
							<!-- End portfolio-item -->
						</div>
					</div>

					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
						<div class="portfolio-one">
							<div class="portfolio-head">
								<div class="portfolio-img">
									<img alt="" src="img/im3.jpg">
								</div>
								<div class="portfolio-hover">
									<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
									<a class="portfolio-zoom" href="#"><i class="fa fa-search"></i></a>
								</div>
							</div>
							<!-- End portfolio-head -->
							<div class="portfolio-content">
								<h5 class="title">
									Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
								</h5>

							</div>
							<!-- End portfolio-content -->
						</div>
						<!-- End portfolio-item -->
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
						<div class="portfolio-one">
							<div class="portfolio-head">
								<div class="portfolio-img">
									<img alt="" src="img/im3.jpg">
								</div>
								<div class="portfolio-hover">
									<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
									<a class="portfolio-zoom prettyPhoto" href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>
							<!-- End portfolio-head -->
							<div class="portfolio-content">
								<h5 class="title">
									Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
								</h5>

							</div>
							<!-- End portfolio-content -->
						</div>
						<!-- End portfolio-item -->
					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
							<div class="portfolio-one">
								<div class="portfolio-head">
									<div class="portfolio-img">
										<img alt="" src="img/im3.jpg">
									</div>
									<div class="portfolio-hover">
										<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
										<a class="portfolio-zoom" href="#"><i class="fa fa-search"></i></a>
									</div>
								</div>
								<!-- End portfolio-head -->
								<div class="portfolio-content">
									<h5 class="title">
										Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
									</h5>

								</div>
								<!-- End portfolio-content -->
							</div>
							<!-- End portfolio-item -->
						</div>

						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
							<div class="portfolio-one">
								<div class="portfolio-head">
									<div class="portfolio-img">
										<img alt="" src="img/im3.jpg">
									</div>
									<div class="portfolio-hover">
										<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
										<a class="portfolio-zoom" href="#"><i class="fa fa-search"></i></a>
									</div>
								</div>
								<!-- End portfolio-head -->
								<div class="portfolio-content">
									<h5 class="title">
										Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
									</h5>

								</div>
								<!-- End portfolio-content -->
							</div>
							<!-- End portfolio-item -->
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
							<div class="portfolio-one">
								<div class="portfolio-head">
									<div class="portfolio-img">
										<img alt="" src="img/im3.jpg">
									</div>
									<div class="portfolio-hover">
										<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
										<a class="portfolio-zoom prettyPhoto" href="#"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<!-- End portfolio-head -->
								<div class="portfolio-content">
									<h5 class="title">
										Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
									</h5>

								</div>
								<!-- End portfolio-content -->
							</div>
							<!-- End portfolio-item -->
						</div>

						<div class="row">
							<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 portfolio-item">
								<div class="portfolio-one">
									<div class="portfolio-head">
										<div class="portfolio-img">
											<img alt="" src="img/im3.jpg">
										</div>
										<div class="portfolio-hover">
											<a class="portfolio-link" href="#"><i class="fa fa-link"></i></a>
											<a class="portfolio-zoom" href="#"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<!-- End portfolio-head -->
									<div class="portfolio-content">
										<h5 class="title">
											Gas stove &nbsp; | <strong> &nbsp;$150.00</strong>
										</h5>

									</div>
									<!-- End portfolio-content -->
								</div>
								<!-- End portfolio-item -->
							</div>
						</div>

					</div>


				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<nav aria-label="Page navigation example">
							<ul class="pagination pagination-lg justify-content-end">
								<li class="page-item"><a class="page-link" href="#"
									tabindex="-1">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>

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
							<li class="active"><a href="quickorder.jsp">Quick Order</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="registration.jsp">Sign Up</a></li>
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