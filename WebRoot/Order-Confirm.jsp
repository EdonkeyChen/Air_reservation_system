<%@page import="com.flight.service.OrderService"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.flight.po.Passenger"%>
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
	<title>Order Confirm</title>
</head>
<body>
<%
	Integer ticket_price_no = Integer.valueOf(request.getParameter("ticket_price_no"));
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	Integer passengerNum = Integer.valueOf(request.getParameter("passengerNum"));
	Integer ticket_price = Integer.valueOf(request.getParameter("ticket_price"));
	Integer ticket_price_total = Integer.valueOf(request.getParameter("ticket_price_total"));
	String flight_no = request.getParameter("flight_no");
	String flight_date = request.getParameter("flight_date");
	List<Passenger> lPassengers = new ArrayList<Passenger>();
	for(int i = 0; i < passengerNum; i++){
		Passenger passenger = new Passenger(
				null,
				request.getParameter("passenger_name"+i),
				request.getParameter("certificate_type"+i),
				request.getParameter("certificate_no"+i),
				request.getParameter("passenger_tel"+i));
		lPassengers.add(passenger);
	}
	if(account_id != null && account_name != null){
%>
			<%@ include file = "includePre/NavPre.txt"%>
			<div class="container magintop-absolute-100" style="font-family: Kohinoor Devanagari Regular;">
				<div class="col-md-9 bg-gray img-rounded">
					<div class="col-md-12 bg-white img-rounded maginbottom-1 magintop-1">
						<form class="form-horizontal" method="post" action="OrderConfirm">
							<input type ="hidden" name="flight_no" value="<%=flight_no%>">
							<input type ="hidden" name="flight_date" value="<%=flight_date%>">
							<input type="hidden" name="ticket_price_total" value="<%=ticket_price_total%>">
							<input type="hidden" name="passengerNum" value="<%=passengerNum%>">
							<input type="hidden" name="ticket_price_no" value="<%=ticket_price_no%>">
							<input type="hidden" name="ticket_price" value="<%=ticket_price%>">
<%
							application.setAttribute("lPassengers", lPassengers);
							for(Passenger passenger : lPassengers){
%>
								<div class="form-group magintop-10">
									<label class="col-sm-4 control-label">Full Name:</label>
									<label class="control-label"><%=passenger.getPassenger_name() %></label>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Certificate Number:</label>
									<label class="control-label">( <%=passenger.getCertificate_type() %> )</label>
									<label class="control-label"><%=passenger.getCertificate_no() %></label>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Phone:</label>
									<label class="control-label"><%=passenger.getPassenger_tel() %></label>
								</div>
<%
								}
%>
							<div class="form-group magintop-10">
								<label class="col-sm-4 control-label">Payer Name</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" 
										required placeholder="Full Name" name="payer_name">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label">Payer Phone</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" 
										required placeholder="Phone Number" name="payer_tel">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label">Payer Email</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" 
										required placeholder="Email" name="payer_email">
								</div>
							</div>
							<div class="form-group magintop-10">
								<div class="col-sm-5 col-sm-offset-4">
									<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Confirm Pay</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-3 bg-gray img-rounded" style="font-family: Kohinoor Devanagari Regular;">
					<h3>Total: ¥<%=ticket_price_total%></h3>
					<p>Price: ¥<%=ticket_price %> X <%=passengerNum %></p>
					<p>Construction Fee: ¥50 X <%=passengerNum %></p>
					<p>Fuel Surcharge: ¥0 X <%=passengerNum %></p>
				</div>
			</div>
			<div class="container">
				<hr>
				<footer>
					<p style="font-family: Kohinoor Devanagari Regular; font-size: 12px">Copyright &copy; 2019 Edonkey All rights reserved</p>
				</footer>
			</div>
<%
	}else{
		response.sendRedirect("Login.jsp");
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