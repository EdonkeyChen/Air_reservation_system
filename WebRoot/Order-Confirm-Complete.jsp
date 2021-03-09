<%@page import="com.flight.po.OrderConfirm"%>
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
	String account_id = (String)session.getAttribute("account_id");
	Integer account_id_oInteger = Integer.valueOf(account_id); 
	String account_name = (String)session.getAttribute("account_name");
	String addAircraftFlag = (String)session.getAttribute("OrderConfirmFlag");
	if(addAircraftFlag != "" && addAircraftFlag != null){
		session.removeAttribute("OrderConfirmFlag");
%>
	<%@ include file = "includePre/NavPre.txt"%>
	<div class="container magintop-absolute-100" style="font-family: Kohinoor Devanagari Regular;">
	</div>
	<div class="container " style="font-family: Kohinoor Devanagari Bold;">
		<h3><center>Complete the payment!</center></h3>
	</div>
	<div class="container">
		<hr>
		<footer>
			<p style="font-family: Kohinoor Devanagari Regular; font-size: 12px">Copyright &copy; 2019 Edonkey All rights reserved</p>
		</footer>
	</div>
<%
	}else{
%>
		<%@ include file = "includePre/NavPre.txt"%>
		<div class="container magintop-absolute-100" style="font-family: Kohinoor Devanagari Regular;">
		</div>
		<div class="container " style="font-family: Kohinoor Devanagari Bold;">
			<h3><center>Payment Failure!</center></h3>
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