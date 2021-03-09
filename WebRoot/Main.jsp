<%@page import="com.flight.po.City"%>
<%@page import="java.util.List"%>
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
	<link rel="stylesheet" href="js/datepicker/assets/css/plugins/datetime/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="js/datepicker/assets/css/plugins/bootstrap-datepicker/datepicker.css">
	<link href="js/SelectChosen/dist/css/component-chosen.css" rel="stylesheet">
	<title>MAIN</title>
</head>
<body>
<%
	List<City> all = (List)request.getAttribute("cList");
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	if(all == null)
	{
%>
		<jsp:forward page="./findAllCity.do"/>
<% 		
	}
	else{		
%>
	<%@ include file = "includePre/NavPre.txt"%>
	<div class="container" style="font-family: Kohinoor Devanagari Medium;">	
		<div class="row"> 
			<div class="width-absalute-348 maginleft-10 magintop-absolute-100 bg-gray">
				<ul class="nav nav-tabs magintop-10" role="tablist">
					<li role="presentation" class="active">
						<a href="#Ticket" role="tab" data-toggle="tab">
							<img src="icon-image/flight-ticket.png" width="50" class="center-block">
							<p class="center-block">Ticket-Booking</p>
						</a>
					</li>
					<li role="presentation">
						<a href="#Check"role="tab" data-toggle="tab">
							<img src="icon-image/check-in.png" width="50" class="center-block">
							<p class="center-block">Check-In</p>
						</a>
					</li>
					<li role="presentation">
						<a href="#Flight"role="tab" data-toggle="tab">
							<img src="icon-image/flight-dynamic.png" width="50" class="center-block">
							<p class="center-block">Flight-Dynamic</p>
						</a>
					</li>
				</ul>
				<div class="tab-content maginbottom-5">
					<div role="tabpanel" class="tab-pane active" id="Ticket">
						<div class="col-md-12 bg-gray">
							<ul class="nav nav-tabs magintop-3" role="tablist">
								<li role="presentation" class="active maginleft-20">
									<a href="#One" role="tab" data-toggle="tab">One Way</a>
								</li>
								<li role="presentation"><a href="#Round"role="tab" data-toggle="tab">Round Rrip</a></li>
							</ul>
							<div class="tab-content maginbottom-5 magintop-5">
								<div role="tabpanel" class="tab-pane active" id="One">
									<form class="form-signin" method="post" action="${pageContext.request.contextPath}/initializeTicketBooking.do">
										<select class="form-control form-control-chosen-required" required data-placeholder="Departure City"
										name="departure_city">
											<%@ include file = "includePre/CityPre.txt" %>
										</select><h2></h2>
										<select class="form-control form-control-chosen-required" required data-placeholder="Arrival City"
										name="arrival_city">
											<%@ include file = "includePre/CityPre.txt" %>
										</select><h2></h2>
										<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-calendar"></i>
											</span>															
											<input class="form-control"placeholder="Departure Date" required name="flight_date">
										</div><h2></h2>
										<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Query</button>
									</form>
								</div>
								<div role="tabpanel" class="tab-pane" id="Round">
									<form class="form-signin" method="post" action="Ticket-Booking.jsp">
										<select class="form-control form-control-chosen-required" required data-placeholder="Departure City"
										name="Departure">
											<%@ include file = "includePre/CityPre.txt" %>
										</select><h2></h2>
										<select class="form-control form-control-chosen-required" required data-placeholder="Arrival City"
										name="Arrival">
											<%@ include file = "includePre/CityPre.txt" %>
										</select><h2></h2>
										<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-calendar"></i>
											</span>															
											<input class="form-control"placeholder="Departure Date" required name="Departure-Date">
										</div><h2></h2>
										<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-calendar"></i>
											</span>															
											<input class="form-control"placeholder="Return Date" required name="Return-Date">
										</div><h2></h2>
										<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Query</button>
									</form>
								</div>
							</div>
						</div>	
					</div>
					<div role="tabpanel" class="tab-pane" id="Check">
						<div class="col-md-12 bg-gray">
							<ul class="nav nav-tabs magintop-3" role="tablist"></ul>
							<div class="tab-content maginbottom-5 magintop-5">
								<div role="tabpanel" class="tab-pane active">
									<form class="form-signin" method="post" action="#">
										<input class="form-control" placeholder="Passenger Name" required autofocus name="PassengerName"><h2></h2>
										<input class="form-control" placeholder="Certificate" required name="Certificate"><h2></h2>
										<input class="form-control" placeholder="Passenger Phone Number" required name="Departure-Date"><h2></h2>
										<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Check-In</button>
									</form>
								</div>
							</div>
						</div>	
					</div>
					<div role="tabpanel" class="tab-pane" id="Flight">
						<div class="col-md-12 bg-gray">
							<ul class="nav nav-tabs magintop-3" role="tablist">
								<li role="presentation" class="active maginleft-15">
									<a href="#Route" role="tab" data-toggle="tab">Flight Route</a>
								</li>
								<li role="presentation"><a href="#Number"role="tab" data-toggle="tab">Flight Number</a></li>
							</ul>
							<div class="tab-content maginbottom-5 magintop-5">
								<div role="tabpanel" class="tab-pane active" id="Route">
									<form class="form-signin" method="post" action="${pageContext.request.contextPath}/initializeFlightDynamic.do">
										<select class="form-control form-control-chosen-required" required data-placeholder="Departure City"
										name="departure_city">
											<%@ include file = "includePre/CityPre.txt" %>
										</select><h2></h2>
										<select class="form-control form-control-chosen-required" required data-placeholder="Arrival City"
										name="arrival_city">
											<%@ include file = "includePre/CityPre.txt" %>
										</select><h2></h2>
										<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-calendar"></i>
											</span>															
											<input class="form-control"placeholder="Return Date" required name="flight_date">
										</div><h2></h2>
										<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Query Flight</button>
									</form>
								</div>
								<div role="tabpanel" class="tab-pane" id="Number">
									<form class="form-signin" method="post" action="${pageContext.request.contextPath}/initializeFlightDynamicByFlightNumber.do">
										<input class="form-control" placeholder="Flight Number" required autofocus name="flight_no"><h2></h2>
										<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-calendar"></i>
											</span>															
											<input class="form-control"placeholder="Return Date" required name="flight_date">
										</div><h2></h2>
										<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Query Flight</button>
									</form>
								</div>
							</div>
						</div>	
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
<%
	}
%>
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