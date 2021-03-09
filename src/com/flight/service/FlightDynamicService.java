package com.flight.service;

import java.util.List;

import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;

public interface FlightDynamicService {
	public List<DailyFlight> findAllDailyFlightForDynamic(DailyFlightSelect DailyFlightSelect);
	public DailyFlight findAllDailyFlightByFlightNumber(DailyFlightSelect DailyFlightSelect);
}
