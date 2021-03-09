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
	<title>Logout</title>
</head>
<body>
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
	<div class="container " style="font-family: Kohinoor Devanagari Bold;">
		<h3><center>The account has been cancelled<br/>Will jump back to the login screen in two seconds</center></h3>
	</div>
	<div class="container">
		<hr>
		<footer>
			<p style="font-family: Kohinoor Devanagari Regular; font-size: 12px">Copyright &copy; 2019 Edonkey All rights reserved</p>
		</footer>
	</div>
<%
	session.invalidate();
	response.setHeader("refresh","2;URL=Login.jsp");
%>
	</script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>