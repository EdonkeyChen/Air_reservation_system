<%@page import="com.flight.po.Aircraft"%>
<%@page import="com.flight.po.Terminal"%>
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
	<title>Flight Input</title>
</head>
<body>
<%
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	Integer account_type = (Integer)session.getAttribute("account_type");
	String addFlightFlag = (String)request.getAttribute("addFlightFlag");
	List<City> all = (List)request.getAttribute("cList");
	List<Terminal> dtList = (List)request.getAttribute("dtList");
	List<Terminal> atList = (List)request.getAttribute("atList");
	List<Airport> dAirportList = (List)request.getAttribute("dAirportList");
	List<Airport> aAirportList = (List)request.getAttribute("aAirportList");
	List<Aircraft> aircrafts = (List)request.getAttribute("aircrafts");
	if(account_id != null && account_name != null && account_type == 1){
		
		if(dAirportList == null && aAirportList == null){
%>
			<%@ include file = "includePre/HeadPre.txt" %>
			<div class="container" style="font-family: Kohinoor Devanagari Medium;">
				<div class="col-md-12 bg-gray img-rounded">
					<div class="col-md-6 col-md-offset-3 magintop-2">
						<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/findAllAirportForFlightInput.do">
<%
							if(addFlightFlag != "" && addFlightFlag != null){
%>
								<div class="form-group">
									<h2 style="font-family: Kohinoor Devanagari Regular; font-size:15px; color:#4479b2;"><center>
									Add Flight Successful!
									</center></h2>
								</div>
<%
							}
%>
							<div class="form-group">
								<div class = "row">
									<div class="col-sm-6">
										Departure City
									</div>
									<div class="col-sm-6">
										Arrival City
									</div>
								</div>
								<div class = "row">
									<div class="col-sm-6">
										<select class="form-control form-control-chosen-required" required data-placeholder="City"
											name="departure_city">
											<%@ include file = "includePre/CityPre.txt" %>
										</select>
									</div>
									<div class="col-sm-6">
										<select class="form-control form-control-chosen-required" required data-placeholder="City"
											name="arrival_city">
											<%@ include file = "includePre/CityPre.txt" %>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-5 col-sm-offset-3">
									<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-4 magintop-2 col-md-offset-4">
					<center><a href="/Web-Curriculum-design/Admin/FunctionChoose.jsp"><img src="icon-image/back-3.png" width="60"></a></center>
				</div>
			</div>
<%
		}else{
			if(dtList == null && atList == null){
%>
				<%@ include file = "includePre/HeadPre.txt" %>
				<div class="container" style="font-family: Kohinoor Devanagari Medium;">
					<div class="col-md-12 bg-gray img-rounded">
						<div class="col-md-6 col-md-offset-3 magintop-2">
							<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/findAllTerminalForFlightInput.do">
								<div class="form-group">
									<div class = "row">
										<div class="col-sm-6">
											Departure Airport
										</div>
										<div class="col-sm-6">
											Arrival Airport
										</div>
									</div>
									<div class = "row">
										<div class="col-sm-6">
											<select class="form-control form-control-chosen-required" required data-placeholder="City"
												name="departure_airport">
													<option></option>
<%
													for( Airport airport : dAirportList ) {
%>
													<option><%=airport.getAirport_name()%></option>
<%
													}
%>
											</select>
										</div>
										<div class="col-sm-6">
											<select class="form-control form-control-chosen-required" required data-placeholder="City"
												name="arrival_airport">
													<option></option>
<%
													for( Airport airport : aAirportList ) {
%>
													<option><%=airport.getAirport_name()%></option>
<%
													}
%>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-5 col-sm-offset-3">
										<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Submit</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-4 magintop-2 col-md-offset-4">
						<center><a href="/Web-Curriculum-design/Admin/FunctionChoose.jsp"><img src="icon-image/back-3.png" width="60"></a></center>
					</div>
				</div>
<%
			}else{
%>
				<%@ include file = "includePre/HeadPre.txt" %>
				<div class="container" style="font-family: Kohinoor Devanagari Medium;">
					<div class="col-md-12 bg-gray img-rounded">
						<div class="col-md-6 col-md-offset-3 magintop-2">
							<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/addFlight.do">
								<div class="form-group">
									<label class="col-sm-4 control-label">Flight No</label>
									<div class="col-sm-6">
										<input class="form-control" id="Phone" required placeholder="Aircraft Name" name="flight_no">
									</div>
								</div>
								<div class="form-group">
									<div class = "row">
										<div class="col-sm-6">
											Departure Terminal
										</div>
										<div class="col-sm-6">
											Arrival Terminal
										</div>
									</div>
									<div class = "row">
										<div class="col-sm-6">
											<select class="form-control " required name="terminal_no">
<%
													for( Terminal terminal : dtList ) {
%>
													<option value="<%=terminal.getTerminal_no()%>">
														<%=terminal.getTerminal_name()%>
													</option>
<%
													}
%>
											</select>
										</div>
										<div class="col-sm-6">
											<select class="form-control" required name="Ter_terminal_no">
<%
													for( Terminal terminal : atList ) {
%>
													<option value="<%=terminal.getTerminal_no()%>">
														<%=terminal.getTerminal_name()%>
													</option>
<%
													}
%>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Aircraft</label>
									<div class="col-sm-6">
										<select class="form-control " required name="aircraft_no">
<%
												for( Aircraft aircraft : aircrafts ) {
%>
												<option value="<%=aircraft.getAircraft_no()%>">
													<%=aircraft.getAircraft_name()%>
												</option>
<%
												}
%>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Departure Time</label>
									<div class="col-sm-6">
										<input class="form-control" required placeholder="Format( 08:00 )" 
											name="scheduled_departure_time">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Arrival Time</label>
									<div class="col-sm-6">
										<input class="form-control" required placeholder="Format( 08:00 )" 
											name="scheduled_arrival_time">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Catering</label>
									<div class="col-sm-6">
										<select class="form-control " required name="catering">
											<option value="Snacks">Snacks</option>
											<option value="Breakfast">Breakfast</option>
											<option value="Launch">Launch</option>
											<option value="Dinner">Dinner</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Flight Time</label>
									<div class="col-sm-6">
										<input class="form-control" required placeholder="Fight Time" 
											name="flight_time">
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
					<div class="col-md-4 magintop-2 col-md-offset-4">
						<center><a href="/Web-Curriculum-design/Admin/FunctionChoose.jsp"><img src="icon-image/back-3.png" width="60"></a></center>
					</div>
				</div>
<%
			}
		}
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