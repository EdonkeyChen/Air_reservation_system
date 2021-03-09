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
import com.flight.po.ReportCalculate;
import com.flight.service.CityService;
import com.flight.service.DailyFlightService;
import com.flight.service.ReportService;

@Controller
public class ReportController {
	
	@Resource(name = "reportServiceImpl")
	private ReportService reportServiceImpl;
	
	@RequestMapping(value = "/printReport.do")
	public String printReport(String string,Model model){
		List<ReportCalculate> rList = reportServiceImpl.printReport(string);
		String month = string;
		model.addAttribute("rList", rList);
		model.addAttribute("month", month);
		return "Admin/ReportPrint";
	}
}
