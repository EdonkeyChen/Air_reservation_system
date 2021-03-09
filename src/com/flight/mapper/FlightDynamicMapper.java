package com.flight.mapper;

import java.util.List;

import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;

public interface FlightDynamicMapper {
	public List<DailyFlight> findAllDailyFlightForDynamic(DailyFlightSelect DailyFlightSelect);
	public DailyFlight findAllDailyFlightByFlightNumber(DailyFlightSelect DailyFlightSelect);
}
