<%@page import="java.math.BigDecimal"%>
<%@page import="com.flight.po.ReportCalculate"%>
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
	<title>Report Print</title>
</head>
<body>
<%
	String account_id = (String)session.getAttribute("account_id");
	String account_name = (String)session.getAttribute("account_name");
	Integer account_type = (Integer)session.getAttribute("account_type");
	String addAircraftFlag = (String)request.getAttribute("addAircraftFlag");
	List<ReportCalculate> rList = (List)request.getAttribute("rList");
	String month = (String)request.getAttribute("month");
	if(account_id != null && account_name != null && account_type == 1){
		if(rList == null){
%>
			<%@ include file = "includePre/HeadPre.txt" %>
			<div class="container" style="font-family: Kohinoor Devanagari Medium;">
				<div class="col-md-12 bg-gray img-rounded">
					<div class="col-md-6 col-md-offset-3 magintop-2">
						<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/printReport.do">
							<div class="form-group">
								<div class = "row">
									<div class="col-sm-6 col-sm-offset-3">
										Choose Month
									</div>
								</div>
								<div class = "row">
									<div class="col-sm-6 col-sm-offset-3">
										<select class="form-control" name="string">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
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
					<table class="table table-bordered">
						<tr style="font-family: Kohinoor Devanagari Bold;">
							<center><h1>Flight conditions In <%=month %>/2019</h1></center>
						</tr>
						<tr style="font-family: Kohinoor Devanagari Bold;">
							<center><h3>Lister : <%=account_name %></h3></center>
						</tr>
						<tr style="font-family: Kohinoor Devanagari Bold;">
							<td>Flight No</td>
							<td>Total Ticket Number</td>
							<td>Sold Ticket Number</td>
							<td>Total Revenue</td>
							<td>On-time Rate</td>
							<td>Flight Count</td>
						</tr>
<%
					for(ReportCalculate report : rList){
						BigDecimal bignum = new BigDecimal("100"); 
%>
						<tr>
							<td><%=report.getFlight_no() %></td>
							<td><%=report.getTotal_ticket() %></td>
							<td><%=report.getTotal_sold_ticket() %></td>
							<td>¥<%=report.getTotal_tevenue() %></td>
							<td><%=report.getOn_time_rate().multiply(bignum)%>%</td>
							<td><%=report.getFlight_count()%></td>
						</tr>
<%
					}
%>
					</table>
				</div>
				<div class="col-md-4 magintop-2 col-md-offset-4">
					<center><a href="/Web-Curriculum-design/Admin/FunctionChoose.jsp"><img src="icon-image/back-3.png" width="60"></a></center>
				</div>
			</div>
<%
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