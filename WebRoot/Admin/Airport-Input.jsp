<%@page import="com.flight.po.Airport"%>
<%@page import="java.util.List"%>
<%@page import="com.flight.po.City"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/bg-image.css">
	<link rel="stylesheet" type="text/css" href="css/magin.css">
	<link rel="stylesheet" type="text/css" href="css/color.css">
	<link rel="stylesheet" href="js/datepicker/assets/css/plugins/datetime/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="js/datepicker/assets/css/plugins/bootstrap-datepicker/datepicker.css">
	<link href="js/SelectChosen/dist/css/component-chosen.css" rel="stylesheet">
	<title>Airport Input</title>
</head>
<body>
<%
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	Integer account_type = (Integer)session.getAttribute("account_type");
	List<City> all = (List)request.getAttribute("cList");
	List<Airport> aList = (List)request.getAttribute("aList");
	String addAirportFlag = (String)request.getAttribute("addAirportFlag");
	String addTerminalFlag = (String)request.getAttribute("addTerminalFlag");
	if(account_id != null && account_name != null && account_type == 1){
%>
	<%@ include file = "includePre/HeadPre.txt" %>
	<div class="container" style="font-family: Kohinoor Devanagari Medium;">
		<div class="col-md-12 bg-gray img-rounded">
			<ul class="nav nav-tabs magintop-2" role="tablist">
				<li role="presentation" class="active">
					<a href="#Airport" role="tab" data-toggle="tab">Airport Input</a>
				</li>
				<li role="presentation"><a href="#Terminal"role="tab" data-toggle="tab">Terminal Input</a></li>
			</ul>
			<div class="tab-content magintop-2">
				<div role="tabpanel" class="tab-pane active" id="Airport">
					<div class="col-md-6 col-md-offset-3">
						<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/addAirport.do">
<%
						if(addAirportFlag != "" && addAirportFlag != null){
%>
							<div class="form-group">
								<h2 style="font-family: Kohinoor Devanagari Regular; font-size:15px; color:#4479b2;"><center>
								Add Airport Successful!
								</center></h2>
							</div>
<%
						}
						if(addTerminalFlag != "" && addTerminalFlag != null){
%>
							<div class="form-group">
								<h2 style="font-family: Kohinoor Devanagari Regular; font-size:15px; color:#4479b2;"><center>
								Add Terminal Successful!
								</center></h2>
							</div>
<%
						}
%>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">City</label>
								<div class="col-sm-6">
									<select class="form-control form-control-chosen-required" required data-placeholder="City"
										name="city_name">
										<%@ include file = "includePre/CityPre.txt" %>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Airport Name</label>
								<div class="col-sm-6">
									<input class="form-control" id="Phone" required placeholder="Airport Name" name="airport_name">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-5 col-sm-offset-4">
									<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="Terminal">
					<div class="col-md-6 col-md-offset-3">
						<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/addTerminal.do">
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Airport</label>
								<div class="col-sm-6">
									<select class="form-control form-control-chosen-required" required data-placeholder="Airport"
										name="airport_name">
										<%@ include file = "includePre/AirportPre.txt" %>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Terminal Name</label>
								<div class="col-sm-6">
									<input class="form-control" id="Phone" required placeholder="Terminal Name" name="terminal_name">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-5 col-sm-offset-4">
									<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 magintop-2 col-md-offset-4">
			<center><a href="/Web-Curriculum-design/Admin/FunctionChoose.jsp"><img src="icon-image/back-3.png" width="60"></a></center>
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
	<!-- CORE -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<!-- datepicker -->
	<script src="js/datepicker/assets/js/plugins/duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
	<script src="js/datepicker/assets/js/plugins/datetime/bootstrap-datetimepicker.min.js"></script>
	<script src="js/datepicker/datepicker.js"></script>
	<!-- hover-dropdown -->
	<script src="js/hover/twitter-bootstrap-hover-dropdown.js"></script>
	<script src="js/hover/hover.js"></script>
	<!-- Chosen -->
	<script src="js/SelectChosen/chosen/chosen.jquery.js"></script>
	<script src="js/SelectChosen/chosen.js"></script>
</body>
</html>