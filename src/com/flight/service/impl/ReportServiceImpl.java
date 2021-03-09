package com.flight.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.flight.mapper.ReportMapper;
import com.flight.po.ReportCalculate;
import com.flight.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {
	@Resource(name = "reportMapper")
	private ReportMapper reportMapper;

	@Override
	public List<ReportCalculate> printReport(String string) {
		return reportMapper.printReport(string);
	}
	
	
}
