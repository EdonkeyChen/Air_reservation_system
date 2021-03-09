package com.flight.testmapper;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.po.DailyFlight;
import com.flight.po.FlightDynamicStatus;
import com.flight.service.AirportService;

public class TestAirport {
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private AirportService airportService = (AirportService)applicationContext.getBean("airportServiceImpl");
	
	@Test
	public void findDailyFlight(){
		FlightDynamicStatus flightDynamicStatus = new FlightDynamicStatus("2019-6-25", "07:00", "15:00");
		List<DailyFlight> dList = airportService.findAllDailyFlightForAirport(flightDynamicStatus);
		for(DailyFlight dailyFlight : dList){
			System.out.println(dailyFlight);
		}
	}
	
	@Test
	public void testTime(){
		 SimpleDateFormat df = new SimpleDateFormat("HH:mm");
         System.out.println(df.format(new Date()));
         SimpleDateFormat df1 = new SimpleDateFormat("mm");
         System.out.println(df1.format(new Date()));
         SimpleDateFormat df2 = new SimpleDateFormat("HH");
         System.out.println(df2.format(new Date()));
         System.out.println(Integer.valueOf(df2.format(new Date())) - 3);
         
         SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
         System.out.println(dateFormat.format(new Date()));
	}
	
	@Test
	public void modifyDailyFlighte(){
		DailyFlight dailyFlight = new DailyFlight(1,"07:00","08:55","Schedule");
		airportService.modifyDailyFlight(dailyFlight);
	}
}
