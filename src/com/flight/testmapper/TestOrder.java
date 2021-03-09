package com.flight.testmapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.flight.po.OrderDetail;
import com.flight.po.OrderPrimary;
import com.flight.po.Passenger;
import com.flight.po.Report;
import com.flight.service.OrderService;

public class TestOrder{
	
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private OrderService orderService = (OrderService)applicationContext.getBean("orderServiceImpl");
	
	@Test
	public void addOrderDetail(){
		OrderDetail orderDetail = new OrderDetail(1,1,2,1300);
		OrderDetail orderDetail1 = new OrderDetail(1,1,2,1300);
		orderService.addOrderDetail(orderDetail);
		orderService.addOrderDetail(orderDetail1);
	}
	
	@Test
	public void addPassenger(){
		Passenger passenger = new Passenger(null,"passenge", "certificat", "certif", "1412412");
		Passenger passenger1 = new Passenger(null,"passenge", "certificat", "certif", "1412412");
		orderService.addPassenger(passenger);
		orderService.addPassenger(passenger1);
	}
	
	@Test
	public void addOrderPrimary(){
		OrderPrimary orderPrimary = new OrderPrimary(1,13,"2019-6-25", 0, 0, "Lorry", "13599339815", "1103413587@qq.com");
		orderService.addOrderPrimary(orderPrimary);
	}
	
	@Test
	public void findOrderNo(){
		Integer integer = orderService.findOrderNo();
		System.out.println(integer);
	}
	
	@Test
	public void findAllTicketPricNo() {
		List<Integer> list = orderService.findAllTicketPricNo(1);
		for(Integer integer : list){
			System.out.println(integer);
		}
	}
	
	@Test
	public void updateTicketNumber() {
		orderService.updateTicketNumber(1);
	}
	
	@Test
	public void addReport(){
		Report report = new Report("MF8501","2019-06-25",1300,4,"Schedule");
		orderService.addReport(report);
	}
}
