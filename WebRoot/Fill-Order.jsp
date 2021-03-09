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
	<title>Fill Order</title>
</head>
<body>
<%
	Integer ticket_price_no = Integer.valueOf(request.getParameter("ticket_price_no"));
	Integer ticket_price = Integer.valueOf(request.getParameter("ticket_price"));
	String flight_no = request.getParameter("flight_no");
	String dCity = request.getParameter("dCity");
	String aCity = request.getParameter("aCity");
	String aircraft = request.getParameter("aircraft");
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	String flight_date = request.getParameter("flight_date");
	Integer passengerNum = null;
	try{
		passengerNum = Integer.valueOf(request.getParameter("passengerNum"));
	}catch(Exception e){}
	if(account_id != null && account_name != null){
		if(passengerNum == null)
		{
%>
			<%@ include file = "includePre/NavPre.txt"%>
			<div class="container container magintop-absolute-100" style="font-family: Kohinoor Devanagari Regular;">
				<div class="container">
					<div class="col-md-6 col-md-offset-3">
						<form class="form-horizontal" method="post" action="Fill-Order.jsp?
												flight_date=<%=flight_date%>&
												ticket_price_no=<%=ticket_price_no%>&
												ticket_price=<%=ticket_price%>&
												flight_no=<%=flight_no%>&
												dCity=<%=dCity%>&
												aCity=<%=aCity%>&
												aircraft=<%=aircraft%>">
							<div class="form-group">
								<label for="Password" class="col-sm-2 control-label">Passenger Number</label>
								<div class="col-sm-10">
								<input type="number" oninput="if(value>4)value=4;if(value.length>1)value=value.slice(0,1);if(value<1)value=1" 
									class="form-control" required placeholder="Choose passenger Numbers ( The maximum number is 4 )" 
										name="passengerNum"/>
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
<%
		}else{	
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
					<div class="col-md-12 bg-white img-rounded maginbottom-1 magintop-1">
						<div class="row">
							<div class="col-md-2 magintop-1 maginbottom-1 maginleft-1">
								<img src="icon-image/logoOG.png" width="40"><%=flight_no %>
							</div>
							<div class="col-md-1 magintop-1"><%=dCity %></div>
							<div class="col-md-3 magintop-1">
								<center>
									<img src="icon-image/takeoff.png" width="18">
									<img src="icon-image/dot.png" width="150">
									<img src="icon-image/landing.png" width="18">
								</center>
							</div>
							<div class="col-md-2 magintop-1"><%=aCity %></div>
							<div class="col-md-1 bg-gray magintop-1 maginbottom-1 maginleft-1 img-rounded">
								<center><%=aircraft %></center>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container magintop-2" style="font-family: Kohinoor Devanagari Regular;" >
				<div class="col-md-9 bg-gray img-rounded">
					<div class="col-md-12 bg-white img-rounded maginbottom-1 magintop-1">
						<form class="form-horizontal" method="post" action="Order-Confirm.jsp">
							<input type ="hidden" name="flight_no" value="<%=flight_no%>">
							<input type ="hidden" name="flight_date" value="<%=flight_date%>">
							<input type ="hidden" name="ticket_price_no" value="<%=ticket_price_no%>">
							<input type ="hidden" name="passengerNum" value="<%=passengerNum%>">
							<input type ="hidden" name="ticket_price" value="<%=ticket_price%>">
							<input type ="hidden" name="ticket_price_total" value="<%=ticket_price*passengerNum + 50*passengerNum%>"> 
<%
							for(int i = 0; i < passengerNum; i++){
%>
								<div class="form-group magintop-10">
									<label for="Username" class="col-sm-4 control-label">Full Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="Username" 
											required placeholder="Full Name" name="passenger_name<%=i%>">
									</div>
								</div>
								<div class="form-group">
									<label for="Phone" class="col-sm-4 control-label">Certificate Number</label>
									<div class="col-sm-3">
										<select class="form-control form-control-chosen-required" 
											required data-placeholder="Certificate Type"
											name="certificate_type<%=i%>">
											<option></option>
											<option>IdCard</option>
											<option>Hong Kong and Macao Residents</option>
											<option>Taiwan Residents</option>
											<option>Passport</option>
											<option>Other</option>
										</select>
									</div>
									<div class="col-sm-3">
										<input class="form-control" id="Phone" 
											required placeholder="Certificate Number" name="certificate_no<%=i%>">
									</div>
								</div>
								<div class="form-group">
									<label for="Password" class="col-sm-4 control-label">Phone</label>
									<div class="col-sm-6">
										<input class="form-control" 
											required placeholder="Phone Number" name="passenger_tel<%=i%>">
									</div>
								</div>
<%
							}
%>
							<div class="form-group">
								<div class="col-sm-5 col-sm-offset-4">
									<button class="btn btn-lg btn-primary btn-block maginbottom-5" type="submit">Confirm</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-3 bg-gray img-rounded" style="font-family: Kohinoor Devanagari Regular;">
					<h3>Total: ¥<%=ticket_price*passengerNum + 50*passengerNum%></h3>
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
		}
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