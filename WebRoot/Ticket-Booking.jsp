<%@page import="com.flight.po.TicketPrice"%>
<%@page import="com.flight.po.Flight"%>
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
	<title>Ticket Booking</title>
</head>
<body>
<%
	List<City> all = (List)request.getAttribute("cList");
	List<Flight> fList = (List)request.getAttribute("dList");
	String dCity = (String)request.getAttribute("dCity");
	String aCity = (String)request.getAttribute("aCity");
	String date = (String)request.getAttribute("date");		
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
					<a href="#One" role="tab" data-toggle="tab">One Way</a>
				</li>
				<li role="presentation"><a href="#Round"role="tab" data-toggle="tab">Round Rrip</a></li>
			</ul>
			<div class="tab-content magintop-2">
				<div role="tabpanel" class="tab-pane active" id="One">
					<form method="post" action="${pageContext.request.contextPath}/initializeTicketBooking.do">
						<div class="row">
							<div class="col-md-2">
								<select class="form-control form-control-chosen-required" required data-placeholder="Departure City"
								name="departure_city">
									<%@ include file = "includePre/CityPre.txt" %>
								</select><h2></h2>
							</div>
							<div class="col-md-2">
								<select class="form-control form-control-chosen-required" required data-placeholder="Arrival City"
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
								<button class="btn btn-primary btn-block maginbottom-5" type="submit">Query</button>
							</div>
						</div>
					</form>
				</div>
				<div role="tabpanel" class="tab-pane" id="Round">
					<form method="post" action="Ticket-Booking.jsp">
						<div class="row">
							<div class="col-md-2">
								<select class="form-control form-control-chosen-required" required data-placeholder="Departure City"
								name="Departure">
									<%@ include file = "includePre/CityPre.txt" %>
								</select><h2></h2>
							</div>
							<div class="col-md-2">
								<select class="form-control form-control-chosen-required" required data-placeholder="Arrival City"
								name="Arrival">
									<%@ include file = "includePre/CityPre.txt" %>
								</select><h2></h2>
							</div>
							<div class="col-md-3">
								<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
									<span class="input-group-addon">
										<i class="glyphicon glyphicon-calendar"></i>
									</span>															
									<input class="form-control"placeholder="Departure Date" required name="Departure-Date">
								</div><h2></h2>
							</div>
							<div class="col-md-3">
								<div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd" >
									<span class="input-group-addon">
										<i class="glyphicon glyphicon-calendar"></i>
									</span>															
									<input class="form-control"placeholder="Return Date" required name="Return-Date">
								</div><h2></h2>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary btn-block maginbottom-5" type="submit">Query</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container magintop-2" style="font-family: Kohinoor Devanagari Regular;" >
		<div class="col-md-9 bg-gray img-rounded">
			<div class="col-md-12 bg-4479b2 img-rounded maginbottom-1 magintop-1">
				<div class="row magintop-1" style="color: white">
					<div class="col-md-4" ><p ><%=dCity%> - <%=aCity%></p></div>
					<div class="col-md-2"><p><%=date%></p></div>
				</div>
			</div>
<% 
			for(Flight flight : fList){
				String collapseExample = "collapseExample"+flight.getFlight_no();
%>
				<div class="col-md-12 bg-white img-rounded maginbottom-1 magintop-1">
					<div class="col-md-12 bg-c1d5e8 magintop-1 img-rounded">
						<div class="row">
							<div class="col-md-2 magintop-2 maginbottom-1 maginleft-1">
								<img src="icon-image/logoOG.png" width="40"><%=flight.getFlight_no()%>
							</div>
							<div class="col-md-2 bg-96b7d5 magintop-1 maginbottom-1 maginleft-1 img-rounded">
								<h5 style="color: white"><center><%=flight.getAircraft_name() %></center></h5>
							</div>
							<div class="col-md-2 bg-96b7d5 magintop-1 maginbottom-1 maginleft-1 img-rounded">
								<h5 style="color: white"><center><%=flight.getCatering()%></center></h5>
							</div>
							<div class="col-md-2 col-md-offset-1 magintop-1">
								<img src="icon-image/tail.png" width="270">
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="row magintop-2">
							<div class="col-md-2">
								<div class="row">
									<div class="col-md-1">
										<h1></h1>
										<img src="icon-image/takeoff.png" width="20">
									</div>
									<div class="col-md-2">
										<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px"><%=flight.getScheduled_departure_time()%></p>
										<p style="font-size: 10px"><%=flight.getdAirport_name()%><br/><%=flight.getdTerminal_name() %></p>
									</div>
								</div>
							</div>
							<div class="col-md-3 magintop-4">
								<img src="icon-image/dot.png" width="150">
							</div>
							<div class="col-md-2">
								<div class="row">
									<div class="col-md-1">
										<h1></h1>
										<img src="icon-image/landing.png" width="20">
									</div>
									<div class="col-md-2">
										<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px"><%=flight.getScheduled_arrival_time()%></p>
										<p style="font-size: 10px"><%=flight.getaAirport_name() %><br/><%=flight.getaTerminal_name()%></p>
									</div>
								</div>
							</div>
							<div class="col-md-3 magintop-4">
								<center><%=flight.getFlight_time() %></center>
							</div>
							<div class="col-md-2">
								<center>
									<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px">¥<%=flight.getTicketpriceList().get(0).getPrice()%></p>
								</center>
							</div>
						</div>
						<div class="col-md-12  magintop--3">
							<a class="maginleft-17" style=" text-decoration: none; color: none;" role="button" data-toggle="collapse" href="#<%=collapseExample%>" aria-controls="<%=collapseExample%>">
								More class and fare
								<span class="caret"></span>
							</a>
							<div class="collapse" id="<%=collapseExample%>">
								<div class="well">
<%
							for(TicketPrice tPrice : flight.getTicketpriceList())	
							{
%>
										<div class="row magintop-1" style="font-family: Kohinoor Devanagari Light;font-size: 12.5px">
											<div class="col-md-3 magintop-1">
												<%=tPrice.getSeat_type_name() %>
		 									</div>
											<div class="col-md-2 magintop-1">
												Fare conditions
											</div>
											<div class="col-md-2 magintop-06">
												<div class="btn-group">
													<button type="button" class="btn btn-xs bg-gray dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
														Detailed rules<span class="caret"></span>
													</button>
													<ul class="dropdown-menu js-activated">
														<li>
															<div class="width-500">
																<div class="row maginleft-1"><div class="col-md-3">
																		<p style="color: #4479b2">Package limit</p>
																</div></div>
																<pre class="maginleft-1 maginright-1"><%=tPrice.getLuggage_limit() %></pre>
																<div class="row maginleft-1 "><div class="col-md-4">
																		<p style="color: #4479b2">Change and refund:</p>
																</div></div>
																<div class="row maginleft-1">
																	<div class="col-md-4"><p style="color: #4479b2">Range</p></div>
																	<div class="col-md-3 col-md-offset-2"><p style="color: #4479b2">Change charge</p></div>
																	<div class="col-md-3"><p style="color: #4479b2">Refund charge</p></div>
																</div>
																<pre class="maginleft-1 maginright-1"><%=tPrice.getRefund_change_rules() %></pre>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="col-md-1" style="font-size: 22px">
												¥<%=tPrice.getPrice() %>
											</div>
											<div class="col-md-1 col-md-offset-1">
												<a href="Fill-Order.jsp?
												flight_date=<%=date%>&
												ticket_price_no=<%=tPrice.getTicket_price_no()%>&
												ticket_price=<%=tPrice.getPrice()%>&
												flight_no=<%=flight.getFlight_no()%>&
												dCity=<%=dCity%>&
												aCity=<%=aCity%>&
												aircraft=<%=flight.getAircraft_name()%>"><button class="btn btn-primary">Book</button></a>
											</div>
											<div class="col-md-2 magintop-1">
<%
											if(tPrice.getTicket_num() > 15)
											{
%>
												Sufficient
<%
											}else{
%>
												<%=tPrice.getTicket_num() %> seats left
<%
											}
%>
											</div>
										</div>
										<div class="magintop-1" style="background-color: #bebebe ;height:1px;border:none;"></div>
<% 
									}
%>
								</div>
							</div>
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