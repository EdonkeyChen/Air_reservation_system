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
	<title>Register</title>
</head>
<body>
<%
	Boolean registerFlag = (Boolean)request.getAttribute("registerFlag");
	String account_name = (String)request.getAttribute("account_name");
	String account_id = (String)request.getAttribute("account_id");
	String registerFalse = (String)request.getAttribute("registerFalse");
	if(registerFlag == null){
		registerFlag = false;
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
<% 
	if(registerFlag){
%>
		<h1 style="font-family: Kohinoor Devanagari Regular; font-size:15px; color:#4479b2;"><center>
		Registered successfully! Account Name:<%=account_name %> Account Id:<%=account_id %> 
		</center></h1>
<%
	}
	if(registerFalse != null){
%>
		<h1 style="font-family: Kohinoor Devanagari Regular; font-size:15px; color:#4479b2;"><center>
			Registration failed! The phone number already exists or the account name already exists！
		</center></h1>
<%
	}
%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
			<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/addAccount.do">
				<div class="form-group">
					<label for="Username" class="col-sm-2 control-label">Username</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Username" required placeholder="Username" name="account_name">
					</div>
				</div>
				<div class="form-group">
					<label for="Phone" class="col-sm-2 control-label">Phone</label>
					<div class="col-sm-10">
						<input type="tel" class="form-control" id="Phone" required placeholder="Phone Number" name="account_tel">
					</div>
				</div>
				<div class="form-group">
					<label for="Password" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="Password" required placeholder="Password" name="account_pwd">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-5 col-sm-offset-4">
						<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Register</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-6 col-md-offset-5">
			<a href="Login.jsp"><img class="maginleft-135" src="icon-image/back-3.png" width="60"></a>
		</div>
	</div>
	<div class="container">
		<hr>
		<footer>
			<p style="font-family: Kohinoor Devanagari Regular; font-size: 12px">Copyright &copy; 2019 Edonkey All rights reserved</p>
		</footer>
	</div>
	</script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>