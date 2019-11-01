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




	



	<section style="margin:90px;" id="login-reg">
		<div class="container">
			<!-- Top content -->
			<div class="row">
				<div class="col-md-3 col-sm-12 forms-right-icons">
				
				</div>
				<div class="col-md-6 col-sm-12">

					<div class="form-box">
						<div class="form-top">
							<div style="margin:25px;">
								<h3 align="center">Login</h3>								
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
								<div align="center">
									<input type="submit" class="btn btn-primary" value="Login">
								</div>
							</form>
							<br>
							<p style="color:#000;">Dont have an account yet. Click here to <a style="color:blue;"
									href="registration.jsp"><u>register</u></a></p>
						</div>
					</div>

				<div class="col-md-3 col-sm-12 forms-right-icons">
				
				</div>

				</div>
	</section>

	
</html>