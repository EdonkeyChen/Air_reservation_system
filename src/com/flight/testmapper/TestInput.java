package com.flight.testmapper;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.po.Aircraft;
import com.flight.po.Airport;
import com.flight.po.City;
import com.flight.po.SeatType;
import com.flight.po.SeatTypeSelect;
import com.flight.po.TicketPriceSelect;
import com.flight.service.InputService;

public class TestInput {
	
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private InputService inputService = (InputService)applicationContext.getBean("inputServiceImpl");
	
	@Test
	public void findAllCityForInput(){
		List<City> list = inputService.findAllCityForInput();
		for (City city : list) {
			System.out.println(city);
		}
	}
	
	@Test
	public void findAllAirportForInput(){
		List<Airport> list = inputService.findAllAirportForInput();
		for (Airport airport : list) {
			System.out.println(airport);
		}
	}
	
	@Test
	public void addAirport(){
		City city = new City(null,"XIAMEN","XIANGAN");
		inputService.addAirport(city);
	}
	
	@Test
	public void findSeatType(){
		List<SeatTypeSelect> list = inputService.findAllSeatTypeForTicketPriceInput();
		for (SeatTypeSelect city : list) {
			System.out.println(city);
		}
	}
	
	@Test
	public void addTeminal(){
		Airport airport = new Airport(null,null,"GAOQI","T4");
		inputService.addTerminal(airport);
	}
	
	@Test
	public void addAircraft(){
		Aircraft aircraft = new Aircraft(null,"Boeing787");
		inputService.addAircraft(aircraft);
	}
	
	@Test
	public void addSeatType() {
		String string = "7 days before take-off&#9;&#9;&#9;"+20+"%&#9;&#9;5%"+"\n"+
						"7 days and 48 hours before take-off&#9;30%&#9;&#9;20%"+"\n"+
						"48 hours and 4 hours before take-off&#9;40%&#9;&#9;30%"+"\n"+
						"4 hours before take-off&#9;&#9;&#9;50%&#9;&#9;40%";
		SeatType seatType = new SeatType(null,"First class Promotion(K)",null,string,2,"0","5","10","15","0","5","10","15");
		inputService.addSeatType(seatType);
	}
	
	@Test
	public void addT(){
		TicketPriceSelect ticketPriceSelect = new TicketPriceSelect();
		inputService.addTicketPrice(ticketPriceSelect);
	}
}
