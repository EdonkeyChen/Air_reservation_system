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
	<title>Admin Function Choose</title>
</head>
<body>
<%
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	Integer account_type = (Integer)session.getAttribute("account_type");
	if(account_id != null && account_name != null && account_type == 1){
%>
	<%@ include file = "includePre/HeadPre.txt" %>
	<div class="container" style="font-family: Kohinoor Devanagari Medium;">
		<div class="col-md-4 col-md-offset-4">
			<a href="${pageContext.request.contextPath}/findAllCityForInput.do">
				<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Airport Input</button>
			</a>
		</div>
		<div class="col-md-4 col-md-offset-4">
			<a href="/Web-Curriculum-design/Admin/Aircraft-Input.jsp">
				<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Aircraft Input</button>
			</a>
		</div>
		<div class="col-md-4 col-md-offset-4">
			<a href="/Web-Curriculum-design/Admin/SeatType-Input.jsp">
				<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">SeatType Input</button>
			</a>
		</div>
		<div class="col-md-4 col-md-offset-4">
			<a href="${pageContext.request.contextPath}/findAllCityForFlightInput.do">
				<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Flight Input</button>
			</a>
		</div>
		<div class="col-md-4 col-md-offset-4">
			<a href="${pageContext.request.contextPath}/findAllCityForDailyFlightInput.do">
				<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">DailyFlight Input</button>
			</a>
		</div>
		<div class="col-md-4 col-md-offset-4">
			<a href="${pageContext.request.contextPath}/findAllCityForTicketPriceInput.do">
				<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">TicketPrice Input</button>
			</a>
		</div>
		<div class="col-md-4 col-md-offset-4">
			<a href="/Web-Curriculum-design/Admin/ReportPrint.jsp">
				<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Report Print</button>
			</a>
		</div>
	</div>
<%
	}else{
		response.sendRedirect("/Web-Curriculum-design/Login.jsp");
	}
%>
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