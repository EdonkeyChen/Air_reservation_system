package com.flight.service;

import java.util.List;

import com.flight.po.ReportCalculate;

public interface ReportService {
	public List<ReportCalculate> printReport(String string);
}
