package com.flight.mapper;

import java.util.List;

import com.flight.po.ReportCalculate;

public interface ReportMapper {
	public List<ReportCalculate> printReport(String string);
}
