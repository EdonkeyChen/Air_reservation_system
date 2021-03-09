package com.flight.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.mapper.AirportMapper;
import com.flight.po.DailyFlight;
import com.flight.po.FlightDynamicStatus;

public class ModifyServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ApplicationContext applicationContext= 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		AirportMapper airportMapper = applicationContext.getBean(AirportMapper.class);
		req.setCharacterEncoding("UTF-8");
		Integer daily_flight_no = Integer.valueOf(req.getParameter("daily_flight_no"));
		String flight_no = req.getParameter("flight_no");
		String flight_date = req.getParameter("flight_date");
		String actual_departure_time = req.getParameter("actual_departure_time");
		String actual_arrival_time = req.getParameter("actual_arrival_time");
		String daily_flight_status = req.getParameter("daily_flight_status");
		DailyFlight dailyFlight = new DailyFlight(daily_flight_no,actual_departure_time,actual_arrival_time,daily_flight_status);
		DailyFlight dailyFlightReport =new DailyFlight(flight_no,flight_date,daily_flight_status);
		airportMapper.modifyReport(dailyFlightReport);
		airportMapper.modifyDailyFlight(dailyFlight);
		resp.sendRedirect("/Web-Curriculum-design/Airport/Airport.jsp");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
