package com.flight.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.flight.mapper.FlightDynamicMapper;
import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.service.FlightDynamicService;

@Service
public class FlightDynamicServiceImpl implements FlightDynamicService {

	@Resource(name = "flightDynamicMapper")
	private FlightDynamicMapper flightDynamicMapper;
	
	@Override
	public List<DailyFlight> findAllDailyFlightForDynamic(DailyFlightSelect DailyFlightSelect) {
		return flightDynamicMapper.findAllDailyFlightForDynamic(DailyFlightSelect);
	}

	@Override
	public DailyFlight findAllDailyFlightByFlightNumber(DailyFlightSelect DailyFlightSelect) {
		return flightDynamicMapper.findAllDailyFlightByFlightNumber(DailyFlightSelect);
	}

}
