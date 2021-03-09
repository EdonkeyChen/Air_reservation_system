package com.flight.mapper;

import java.util.List;

import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.po.Flight;

public interface DailyFlightMapper {
	public List<Flight> findAllDailyFlight(DailyFlightSelect DailyFlightSelect);
}
