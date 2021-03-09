package com.flight.testmapper;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.po.City;
import com.flight.service.CityService;

public class TestCity {
	
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private CityService cityService = (CityService)applicationContext.getBean("cityServiceImpl");
	
	@Test
	public void findAllCity(){
		List<City> list = cityService.findAllCity();
		for (City city : list) {
			System.out.println(city);
		}
	}
}
