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
	<title>Modify Flight Dynamic</title>
</head>
<body>
<%
	List<DailyFlight> fList = (List)session.getAttribute("fList");
	String account_id = (String)session.getAttribute("account_id");
	Integer account_type = (Integer)session.getAttribute("account_type");
	String account_name = (String)session.getAttribute("account_name");
	Integer daily_flight_no = Integer.valueOf(request.getParameter("daily_flight_no"));
	String flight_no = request.getParameter("flight_no");
	String flight_date = request.getParameter("flight_date");
	if(account_id != null && account_name != null && account_type == 2){
%>
	<%@ include file = "includePre/HeadPre.txt" %>
	<div class="container" style="font-family: Kohinoor Devanagari Medium;">
		<div class="col-md-12 bg-gray img-rounded">
			<ul class="nav nav-tabs magintop-2" role="tablist">
				<li role="presentation" class="active">
					<a href="#Aircraft" role="tab" data-toggle="tab">Aircraft Input</a>
				</li>
			</ul>
			<div class="tab-content magintop-2">
				<div role="tabpanel" class="tab-pane active" id="Aircraft">
					<div class="col-md-6 col-md-offset-3">
						<form class="form-horizontal" method="post" action="/Web-Curriculum-design/ModifyServlet">
							<input type="hidden" value="<%=daily_flight_no%>" name="daily_flight_no">
							<input type="hidden" value="<%=flight_no %>" name="flight_no">
							<input type="hidden" value="<%=flight_date %>" name="flight_date">
							<div class="col-md-6 col-md-offset-3">
								<h3><%=flight_no %><br/><%=flight_date %></h3>
							</div>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Actual Departure Time</label>
								<div class="col-sm-6">
									<input class="form-control" id="Phone" required placeholder="Format( 07:00 )" 
										name="actual_departure_time">
								</div>
							</div>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Actual Arrival Time</label>
								<div class="col-sm-6">
									<input class="form-control" id="Phone" required placeholder="Format( 07:00 )" 
										name="actual_arrival_time">
								</div>
							</div>
							<div class="form-group">
								<label for="Phone" class="col-sm-4 control-label">Daily Flight Status</label>
								<div class="col-sm-6">
									<select class="form-control form-control-chosen-required" required
													name="daily_flight_status">
											<option value="Schedule">Schedule</option>
											<option value="Delay">Delay</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-5 col-sm-offset-4">
									<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Modify</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 magintop-2 col-md-offset-4">
			<center><a href="/Web-Curriculum-design/Airport/Flight-Dynamic-Status.jsp"><img src="icon-image/back-3.png" width="60"></a></center>
		</div>
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