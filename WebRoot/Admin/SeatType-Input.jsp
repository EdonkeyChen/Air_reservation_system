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
	<title>SeatType Input</title>
</head>
<body>
<%
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	Integer account_type = (Integer)session.getAttribute("account_type");
	String addAircraftFlag = (String)session.getAttribute("addAircraftFlag");
	if(account_id != null && account_name != null && account_type == 1){
%>
	<%@ include file = "includePre/HeadPre.txt" %>
	<div class="container" style="font-family: Kohinoor Devanagari Medium;">
		<div class="col-md-12 bg-gray img-rounded">
			<ul class="nav nav-tabs magintop-2" role="tablist">
				<li role="presentation" class="active">
					<a href="#Aircraft" role="tab" data-toggle="tab">SeatType Input</a>
				</li>
			</ul>
			<div class="tab-content magintop-2">
				<div role="tabpanel" class="tab-pane active" id="Aircraft">
					<div class="col-md-6 col-md-offset-3">
						<form class="form-horizontal" method="post" action="/Web-Curriculum-design/SeatTypeInput">
<%
						if(addAircraftFlag != "" && addAircraftFlag != null){
							session.removeAttribute("addAircraftFlag");
%>
							<div class="form-group">
								<h2 style="font-family: Kohinoor Devanagari Regular; font-size:15px; color:#4479b2;"><center>
								Add Seat Type Successful!
								</center></h2>
							</div>
<%
						}
%>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Seat Type Name</label>
								<div class="col-sm-6">
									<input class="form-control" id="Phone" required placeholder="Aircraft Name" name="seat_type_name">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<label for="Phone" class="control-label">Refund Change Rules:</label>
								</div>
								<div class="col-sm-12">
									<label class="col-sm-4 control-label">Range:</label>
									<label class="col-sm-5 control-label">Change charge:</label>
									<label class="col-sm-3 control-label">Refund charge:</label>
								</div>
								<div class="col-sm-12">
									<div class = "row">
										<div class="col-sm-6">
											<p>7 days before take-off</p>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="change1">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="refund1">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class = "row">
										<div class="col-sm-6">
											<p>7 days and 48 hours before take-off</p>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="change2">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="refund2">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class = "row">
										<div class="col-sm-6">
											<p>48 hours and 4 hours before take-off</p>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="change3">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="refund3">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class = "row">
										<div class="col-sm-6">
											<p>4 hours before take-off</p>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="change4">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
										<div class="col-sm-3">
											<select class="form-control" placeholder="real_type" name="refund4">
												<%@ include file = "includePre/PercentagePre.txt" %>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Real Type</label>
								<div class="col-sm-6">
									<select class="form-control" placeholder="real_type" name="real_type">
										<%@ include file = "includePre/SeatTypePre.txt" %>
									</select>
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