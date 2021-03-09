package com.flight.testmapper;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.po.Flight;
import com.flight.service.DailyFlightService;
import com.flight.service.FlightDynamicService;

public class TestFlightDynamic {
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private FlightDynamicService flightDynamicService = (FlightDynamicService)applicationContext.getBean("flightDynamicServiceImpl");
	
	@Test
	public void findAllDailyFlightForDynamic(){
		DailyFlightSelect dSelect = new DailyFlightSelect("XIAMEN","SHANGHAI HONGQIAO","2019-06-25");
		List<DailyFlight> list = flightDynamicService.findAllDailyFlightForDynamic(dSelect);
		for (DailyFlight dFlight : list) {
			System.out.println(dFlight.toString());
		}
	}
	
	@Test
	public void findAllDailyFlightByFlightNumber(){
		DailyFlightSelect dSelect = new DailyFlightSelect("MF8501","2019-06-25");
		DailyFlight dFlight = flightDynamicService.findAllDailyFlightByFlightNumber(dSelect);
		System.out.println(dFlight);
	}
}
