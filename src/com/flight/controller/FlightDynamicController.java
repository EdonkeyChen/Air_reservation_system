package com.flight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.po.City;
import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.service.CityService;
import com.flight.service.FlightDynamicService;

@Controller
public class FlightDynamicController {
	@Resource(name = "cityServiceImpl")
	private CityService cityServiceImpl;
	
	@Resource(name = "flightDynamicServiceImpl")
	private FlightDynamicService flightDynamicServiceImpl;
	
	@RequestMapping(value = "/initializeFlightDynamic.do")
	public String findAllDailyFlightForDynamic(DailyFlightSelect dailyFlightSelect,Model model){
		Boolean functionFlag = true;
		List<City> cList = this.cityServiceImpl.findAllCity();
		List<DailyFlight> dList = this.flightDynamicServiceImpl.findAllDailyFlightForDynamic(dailyFlightSelect);
		model.addAttribute("cList",cList);
		model.addAttribute("dList",dList);
		model.addAttribute("dCity",dailyFlightSelect.getDeparture_city());
		model.addAttribute("aCity",dailyFlightSelect.getArrival_city());
		model.addAttribute("date",dailyFlightSelect.getFlight_date());
		model.addAttribute("functionFlag",functionFlag);
		return "Flight-Dynamic";
	}
	
	@RequestMapping(value = "/initializeFlightDynamicByFlightNumber.do")
	public String findAllDailyFlightByFlightNumber(DailyFlightSelect dailyFlightSelect,Model model){
		Boolean functionFlag = false;
		List<City> cList = this.cityServiceImpl.findAllCity();
		DailyFlight dailyFlight = this.flightDynamicServiceImpl.findAllDailyFlightByFlightNumber(dailyFlightSelect);
		model.addAttribute("cList",cList);
		model.addAttribute("dailyFlight",dailyFlight);
		model.addAttribute("dCity",dailyFlight.getdCity());
		model.addAttribute("aCity",dailyFlight.getaCity());
		model.addAttribute("date",dailyFlightSelect.getFlight_date());
		model.addAttribute("functionFlag",functionFlag);
		return "Flight-Dynamic";
	}
}
