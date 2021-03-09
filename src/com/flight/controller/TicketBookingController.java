package com.flight.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.po.City;
import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.po.Flight;
import com.flight.service.CityService;
import com.flight.service.DailyFlightService;

@Controller
public class TicketBookingController {
	
	@Resource(name = "cityServiceImpl")
	private CityService cityServiceImpl;
	
	@Resource(name = "dailyFlightServiceImpl")
	private DailyFlightService dailyFlightServiceImpl;
	
	@RequestMapping(value = "/initializeTicketBooking.do")
	public String initializeTicketBooking(DailyFlightSelect dailyFlightSelect,Model model){
		List<City> cList = this.cityServiceImpl.findAllCity();
		List<Flight> dList = this.dailyFlightServiceImpl.findAllDailyFlight(dailyFlightSelect);
		model.addAttribute("cList",cList);
		model.addAttribute("dList",dList);
		model.addAttribute("dCity",dailyFlightSelect.getDeparture_city());
		model.addAttribute("aCity",dailyFlightSelect.getArrival_city());
		model.addAttribute("date",dailyFlightSelect.getFlight_date());
		return "Ticket-Booking";
	}
}

