<%@ page language="java" import="java.sql.*" errorPage=""
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home | T-Gases</title>
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




	<section id="login-reg">
		<div class="container">
			<!-- Top content -->
			<div class="row">
				<div class="col-md-3 col-sm-12 forms-right-icons"></div>
				<!--forms-right-icons-->
				<div class="col-md-6 col-sm-12">
					<div class="form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h6>Join a community powered by T-Gases</h6>
								<p>Please fill in the fields below</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-pencil"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form role="form" action="reg.jsp" method="post"
								class="login-form">
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-user"></i></span> <input type="text"
										class="form-control" placeholder="fullname" name="name"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-user"></i></span> <input type="text"
										class="form-control" placeholder="username" name="id"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-key"></i></span> <input type="password"
										class="form-control" placeholder="password" name="password"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-key"></i></span> <input type="password"
										class="form-control" placeholder="confirm password"
										name="pass" aria-describedby="basic-addon1">
								</div>
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-phone"></i></span> <input type="tel"
										class="form-control" placeholder="phone" name="phone"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group form-group">
									<span class="input-group-addon" id="basic-addon1"><i
										class="fa fa-email"></i></span> <input class="form-control"
										type="email" name="email" placeholder="email"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group form-group">

									<textarea rows="4" cols="70" class="form-control"
										name="address" placeholder="Address"></textarea>

								</div>
								<div align="center">
									<input type="submit" value="Register"
										class="btn btn-md btn-primary">
								</div>
							</form>
						</div>
					</div>

					<div class="col-md-3 col-sm-12 forms-right-icons"></div>

				</div>
	</section>
</html>