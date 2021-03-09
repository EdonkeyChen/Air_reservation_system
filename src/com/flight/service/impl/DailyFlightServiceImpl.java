package com.flight.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.flight.mapper.DailyFlightMapper;
import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.po.Flight;
import com.flight.service.DailyFlightService;

@Service
public class DailyFlightServiceImpl implements DailyFlightService {
	
	@Resource(name = "dailyFlightMapper")
	private DailyFlightMapper dailyFlightMapper;

	@Override
	public List<Flight> findAllDailyFlight(DailyFlightSelect DailyFlightSelect) {
		return dailyFlightMapper.findAllDailyFlight(DailyFlightSelect);
	}
}
