package com.flight.testmapper;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.po.Flight;
import com.flight.service.DailyFlightService;


public class TestDailyFlight {
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private DailyFlightService dailyFlightService = (DailyFlightService)applicationContext.getBean("dailyFlightServiceImpl");
	
	@Test
	public void findAllDailyFlight(){
		DailyFlightSelect dSelect = new DailyFlightSelect("SHANGHAI HONGQIAO","XIAMEN","2019-06-25");
		List<Flight> list = dailyFlightService.findAllDailyFlight(dSelect);
		for (Flight dFlight : list) {
			System.out.println(dFlight.toString());
		}
	}
}
