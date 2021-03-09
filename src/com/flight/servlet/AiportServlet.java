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

public class AiportServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ApplicationContext applicationContext= 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		AirportMapper airportMapper = applicationContext.getBean(AirportMapper.class);
		req.setCharacterEncoding("UTF-8");
		String start_time = null;
		String end_time = null;
		String flight_date = null;
		SimpleDateFormat mm = new SimpleDateFormat("mm");
		SimpleDateFormat HH = new SimpleDateFormat("HH");
		SimpleDateFormat yyyy = new SimpleDateFormat("yyyy-MM-dd");
		Integer mmStart = Integer.valueOf(HH.format(new Date())) - 3;
		Integer mmEnd = Integer.valueOf(HH.format(new Date())) + 3;
		if (mmStart < 10) {
			start_time ="0"+ String.valueOf(mmStart) + ":" +mm.format(new Date());
		}else{
			start_time = String.valueOf(mmStart) + ":" +mm.format(new Date());
		}
		if (mmEnd < 10) {
			end_time = "0"+String.valueOf(mmEnd) + ":" +mm.format(new Date());
		}else{
			end_time = String.valueOf(mmEnd) + ":" +mm.format(new Date());
		}
		flight_date = yyyy.format(new Date());
		FlightDynamicStatus flightDynamicStatus = 
				new FlightDynamicStatus(flight_date, start_time, end_time);
		List<DailyFlight> fList =  airportMapper.findAllDailyFlightForAirport(flightDynamicStatus);
		req.getSession().setAttribute("fList", fList);
		resp.sendRedirect("/Web-Curriculum-design/Airport/Flight-Dynamic-Status.jsp");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
