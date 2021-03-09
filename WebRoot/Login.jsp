<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/bg-image.css">
	<link rel="stylesheet" type="text/css" href="css/magin.css">
	<link rel="stylesheet" type="text/css" href="css/color.css">
	<title>Login</title>
</head>
<body>
<%
	Boolean loginFlag = (Boolean)request.getAttribute("loginFlag");
	if(loginFlag == null){
		loginFlag = false;
	}
%>
	<h1></h1>
	<div class="container">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-6" >
					<a href="Main.jsp"><img src="icon-image/logo.png" width="400" ></a>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="font-family: Kohinoor Devanagari Medium;">	
		<div class="img-rounded row bg-login"> 
			<div class="col-md-3 col-md-offset-8 magintop-2 bg-gray img-rounded">
				<ul class="nav nav-tabs magintop-10" role="tablist">
					<li role="presentation" class="active"><a href="#PhoneNumber" role="tab" data-toggle="tab">Phone Number</a></li>
					<li role="presentation"><a href="#AccountID" role="tab" data-toggle="tab">AccountID</a></li>
				</ul>
				<div class="tab-content maginbottom-5">
					<div role="tabpanel" class="tab-pane active" id="PhoneNumber">
						<form class="form-signin" method="post" action="${pageContext.request.contextPath}/findAccountByAccount.do">
							<h2 class="form-signin-heading">Please sign in</h2>
							<label for="inputIdentity" class="sr-only"></label>
							<input id="inputIdentity"class="form-control" placeholder="Phone Number" required autofocus name="account_tel" maxlength="13">
							<h2></h2>
							<label for="inputPassword" class="sr-only"></label>
							<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="account_pwd">
<% 
							if(loginFlag){
%>
								<h2 style="font-family: Kohinoor Devanagari Regular; font-size:15px; color:red;"><center>
								Login failed! Please re-enter!
								</center></h2>
<%
							}else{
%>
								<h2></h2>
<%
							}
%>
							
							<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Sign in</button>
							<a style=" text-decoration: none; color: none;" href="Register.jsp">Register</a>
						</form>
					</div>
					<div role="tabpanel" class="tab-pane" id="AccountID">
						<form class="form-signin" method="post" action="${pageContext.request.contextPath}/findAccountByAccount.do">
							<h2 class="form-signin-heading">Please sign in</h2>
							<label for="inputIdentity" class="sr-only"></label>
							<input id="inputIdentity"class="form-control" placeholder="AccountID" required autofocus name="account_id" maxlength="5">
							<h2></h2>
							<label for="inputPassword" class="sr-only"></label>
							<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="account_pwd">
							<h2></h2>
							<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Sign in</button>
							<a style=" text-decoration: none; color: none;" href="Register.jsp">Register</a>
						</form>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<div class="container">
		<hr>
		<footer>
			<p style="font-family: Kohinoor Devanagari Regular; font-size: 12px">Copyright &copy; 2019 Edonkey All rights reserved</p>
		</footer>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>