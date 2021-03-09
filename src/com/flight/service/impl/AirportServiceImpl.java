package com.flight.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.flight.mapper.AirportMapper;
import com.flight.po.DailyFlight;
import com.flight.po.FlightDynamicStatus;
import com.flight.service.AirportService;

@Service
public class AirportServiceImpl implements AirportService {
	@Resource(name = "airportMapper")
	private AirportMapper airportMapper;
	
	@Override
	public List<DailyFlight> findAllDailyFlightForAirport(FlightDynamicStatus flightDynamicStatus) {
		return airportMapper.findAllDailyFlightForAirport(flightDynamicStatus);
	}

	@Override
	public int modifyDailyFlight(DailyFlight dailyFlight) {
		return airportMapper.modifyDailyFlight(dailyFlight);
	}

	@Override
	public int modifyReport(DailyFlight dailyFlight) {
		return airportMapper.modifyDailyFlight(dailyFlight);
	}

}
