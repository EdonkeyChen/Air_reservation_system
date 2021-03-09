<%@page import="com.flight.po.DailyFlight"%>
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
	<title>Flight Dynamic</title>
</head>
<body>
<%
	List<City> all = (List)request.getAttribute("cList");
	List<DailyFlight> fList = (List)request.getAttribute("dList");
	DailyFlight dailyFlight = (DailyFlight)request.getAttribute("dailyFlight");
	String dCity = (String)request.getAttribute("dCity");
	String aCity = (String)request.getAttribute("aCity");
	String date = (String)request.getAttribute("date");
	Boolean functionFlag = (Boolean)request.getAttribute("functionFlag");
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
%>
	<%@ include file = "includePre/NavPre.txt"%>
	<div class="container magintop-absolute-100" style="font-family: Kohinoor Devanagari Regular;">
		<div class="row">
			<div class="col-sm-2 maginleft-1">
				<img class="maginbottom-2" src="icon-image/logoOG.png" width="40">
				<a style=" text-decoration: none; color: none;" href="Main.jsp">Home Page</a>
			</div>
		</div>
		<div class="col-md-12 bg-gray img-rounded">
			<ul class="nav nav-tabs magintop-2" role="tablist">
				<li role="presentation" class="active">
					<a href="#One" role="tab" data-toggle="tab">Flight Route</a>
				</li>
				<li role="presentation"><a href="#Round"role="tab" data-toggle="tab">Flight Number</a></li>
			</ul>
			<div class="tab-content magintop-2">
				<div role="tabpanel" class="tab-pane active maginleft-2" id="One">
					<form method="post" action="${pageContext.request.contextPath}/initializeFlightDynamic.do">
						<div class="row">
							<div class="col-md-2">
								<select class="form-control form-control-chosen-required" data-placeholder="Departure City"
								name="departure_city">
									<%@ include file = "includePre/CityPre.txt" %>
								</select><h2></h2>
							</div>
							<div class="col-md-2">
								<select class="form-control form-control-chosen-required" data-placeholder="Arrival City"
								name="arrival_city">
									<%@ include file = "includePre/CityPre.txt" %>
								</select><h2></h2>
							</div>
							<div class="col-md-3">
								<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
									<span class="input-group-addon">
										<i class="glyphicon glyphicon-calendar"></i>
									</span>															
									<input class="form-control"placeholder="Departure Date" required name="flight_date">
								</div><h2></h2>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary btn-block maginbottom-5" type="submit">Query Flight</button>
							</div>
						</div>
					</form>
				</div>
				<div role="tabpanel" class="tab-pane" id="Round">
					<form method="post" action="${pageContext.request.contextPath}/initializeFlightDynamicByFlightNumber.do">
						<div class="col-md-2">
							<input class="form-control" placeholder="Flight Number" required autofocus name="flight_no"><h2></h2>
						</div>
						<div class="col-md-3">
							<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
								<span class="input-group-addon">
									<i class="glyphicon glyphicon-calendar"></i>
								</span>															
								<input class="form-control"placeholder="Departure Date" required name="flight_date">
							</div><h2></h2>
						</div>
						<div class="col-md-2">
							<button class="btn btn-primary btn-block maginbottom-5" type="submit">Query</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container magintop-2" style="font-family: Kohinoor Devanagari Regular;" >
		<div class="col-md-12 bg-gray img-rounded">
			<div class="col-md-12 bg-4479b2 img-rounded maginbottom-1 magintop-1">
				<div class="row magintop-1" style="color: white">
					<div class="col-md-4" ><p ><%=dCity%> - <%=aCity%></p></div>
					<div class="col-md-2"><p><%=date%></p></div>
				</div>
			</div>
			<div class="col-md-12 bg-white img-rounded maginbottom-1">
				<div class="row">
					<div class="col-md-1 magintop-1 maginbottom-1 maginleft-3"><center>Flight</center></div>
					<div class="col-md-2 magintop-1 maginbottom-1 maginleft-10"><center>Flight Route</center></div>
					<div class="col-md-2 magintop-1 maginbottom-1 maginleft-5"><center>Flight Date</center></div>
					<div class="col-md-2 magintop-1 maginbottom-1 maginleft-4"><center>Flight Time</center></div>
					<div class="col-md-2 magintop-1 maginbottom-1 maginleft-1"><center>Flight Status</center></div>
				</div>
			</div>
<%
		if(functionFlag){
			for(DailyFlight flight : fList){
%>
				<div class="col-md-12 bg-white img-rounded maginbottom-1">
					<div class="row">
						<div class="col-md-2 magintop-3 maginbottom-1 maginleft-1">
							<img src="icon-image/logoOG.png" width="40"><%=flight.getFlight_no()%>
						</div>
						<div class="col-md-3 magintop-2 maginbottom-1">
							<center><p style="font-family: Kohinoor Devanagari Bold;font-size: 15px">
								<%=dCity%> - <%=aCity%>
							</p></center>
							<center><p style="font-size: 10px">
								<%=flight.getdAirport_name()%> <%=flight.getdTerminal_name() %> 
								- 
								<%=flight.getaAirport_name() %> <%=flight.getaTerminal_name()%>
							</p></center>
						</div>
						<div class="col-md-2 magintop-3 maginbottom-1">
							<center><%=date%></center>
						</div>
						<div class="col-md-3 magintop-2 maginbottom-1">
							<div class="row">
								<div class="col-md-2 maginleft-10">
									Departs
									<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px">
										<%=flight.getEstimated_departure_time()%>
									</p>
								</div>
								<div class="col-md-2 maginleft-30">
									Arrives
									<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px">
										<%=flight.getEstimated_arrival_time()%>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-1 magintop-2 maginbottom-1 maginleft-2">
							<center><%=flight.getDaily_flight_status()%></center>
							<center>
								<a href="${pageContext.request.contextPath}
									/initializeTicketBooking.do?
										departure_city=<%=dCity%>&
										arrival_city=<%=aCity%>&
										flight_date=<%=date%>">
									<button class="btn btn-primary">Book</button>
								</a>
							</center>
						</div>
					</div>
				</div>
<%
			}
		}else{
%>
			<div class="col-md-12 bg-white img-rounded maginbottom-1">
					<div class="row">
						<div class="col-md-2 magintop-3 maginbottom-1 maginleft-1">
							<img src="icon-image/logoOG.png" width="40"><%=dailyFlight.getFlight_no()%>
						</div>
						<div class="col-md-3 magintop-2 maginbottom-1">
							<center><p style="font-family: Kohinoor Devanagari Bold;font-size: 15px">
								<%=dCity%> - <%=aCity%>
							</p></center>
							<center><p style="font-size: 10px">
								<%=dailyFlight.getdAirport_name()%> <%=dailyFlight.getdTerminal_name()%>
								- 
								<%=dailyFlight.getaAirport_name()%> <%=dailyFlight.getaTerminal_name()%>
							</p></center>
						</div>
						<div class="col-md-2 magintop-3 maginbottom-1">
							<center><%=date%></center>
						</div>
						<div class="col-md-3 magintop-2 maginbottom-1">
							<div class="row">
								<div class="col-md-2 maginleft-10">
									Departs
									<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px">
										<%=dailyFlight.getEstimated_departure_time()%>
									</p>
								</div>
								<div class="col-md-2 maginleft-30">
									Arrives
									<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px">
										<%=dailyFlight.getEstimated_arrival_time()%>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-1 magintop-2 maginbottom-1 maginleft-2">
							<center><%=dailyFlight.getDaily_flight_status()%></center>
							<center>
								<a href="${pageContext.request.contextPath}
									/initializeTicketBooking.do?
										departure_city=<%=dCity%>&
										arrival_city=<%=aCity%>&
										flight_date=<%=date%>">
									<button class="btn btn-primary">Book</button>
								</a>
							</center>
						</div>
					</div>
				</div>
<%
		}
%>
		</div>
	</div>
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