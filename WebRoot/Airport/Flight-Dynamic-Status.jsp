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
	<title>Flight Dynamic Status</title>
</head>
<body>
<%
	List<DailyFlight> fList = (List)session.getAttribute("fList");
	String account_id = (String)session.getAttribute("account_id");
	Integer account_type = (Integer)session.getAttribute("account_type");
	String account_name = (String)session.getAttribute("account_name");
	if(account_id != null && account_name != null && account_type == 2){
%>
	<%@ include file = "includePre/HeadPre.txt" %>
<%
			for(DailyFlight flight : fList){
%>
		<div class="container" style="font-family: Kohinoor Devanagari Medium;">
			<div class="col-md-12 bg-white img-rounded maginbottom-1">
				<div class="row">
					<div class="col-md-2 magintop-3 maginbottom-1 maginleft-1">
						<img src="icon-image/logoOG.png" width="40"><%=flight.getFlight_no()%>
					</div>
					<div class="col-md-3 magintop-2 maginbottom-1">
						<center><p style="font-family: Kohinoor Devanagari Bold;font-size: 15px">
							<%=flight.getdAirport_name()%> - <%=flight.getaAirport_name()%>
						</p></center>
						<center><p style="font-size: 10px">
							 <%=flight.getdTerminal_name() %> 
							- 
							 <%=flight.getaTerminal_name()%>
						</p></center>
					</div>
					<div class="col-md-2 magintop-3 maginbottom-1">
						<center><%=flight.getFlight_date()%></center>
					</div>
					<div class="col-md-3 magintop-2 maginbottom-1">
						<div class="row">
							<div class="col-md-2 maginleft-10">
								Departs
								<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px">
									<%=flight.getActual_departure_time()%>
								</p>
							</div>
							<div class="col-md-2 maginleft-30">
								Arrives
								<p style="font-family: Kohinoor Devanagari Bold;font-size: 20px">
									<%=flight.getActual_arrival_time()%>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-1 magintop-2 maginbottom-1 maginleft-2">
						<center><%=flight.getDaily_flight_status()%></center>
						<center>
							<a href="/Web-Curriculum-design/Airport/Modify-Flight-Dynamic.jsp?
								daily_flight_no=<%=flight.getDaily_flight_no()%>&
								flight_no=<%=flight.getFlight_no()%>&
								flight_date=<%=flight.getFlight_date()%>">
								<button class="btn btn-primary">Modify</button>
							</a>
						</center>
					</div>
				</div>
			</div>
			
		</div>
<%
			}
%>
		<div class="col-md-4 magintop-2 col-md-offset-4">
		<center><a href="/Web-Curriculum-design/Airport/Airport.jsp"><img src="icon-image/back-3.png" width="60"></a></center>
		</div>
<%
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