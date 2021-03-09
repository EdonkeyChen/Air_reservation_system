package com.flight.testmapper;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.flight.po.ReportCalculate;
import com.flight.service.ReportService;

public class TestReport {
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private ReportService reportService = (ReportService)applicationContext.getBean("reportServiceImpl");
	
	@Test
	public void printReport(){
		List<ReportCalculate > list = reportService.printReport("6");
		for(ReportCalculate reportCalculate : list){
			System.out.println(reportCalculate);
		}
	}
}
