package com.flight.mapper;

import java.util.List;

import com.flight.po.DailyFlight;
import com.flight.po.FlightDynamicStatus;

public interface AirportMapper {
	public List<DailyFlight> findAllDailyFlightForAirport(FlightDynamicStatus flightDynamicStatus);
	public int modifyDailyFlight(DailyFlight dailyFlight);
	public int modifyReport(DailyFlight dailyFlight);
}
