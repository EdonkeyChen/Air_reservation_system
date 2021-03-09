package com.flight.mapper;

import java.util.List;

import com.flight.po.Aircraft;
import com.flight.po.Airport;
import com.flight.po.City;
import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.po.Flight;
import com.flight.po.SeatType;
import com.flight.po.SeatTypeSelect;
import com.flight.po.Terminal;
import com.flight.po.TicketPriceSelect;

public interface InputMapper {
	public List<City> findAllCityForInput();
	public List<City> findAllCityForFlightInput();
	public List<City> findAllCityForDailyFlightInput();
	public List<City> findAllCityForTicketPriceInput();
	public List<Airport> findAllAirportForInput();
	public List<Airport> findAllAirportForFlightInput(City city);
	public List<Terminal> findAllTerminalForFlightInput(Airport airport);
	public List<Aircraft> findAllAircraftForInput();
	public List<Flight> findAllFlightForDailyFlightInput(DailyFlightSelect dailyFlightSelect);
	public List<DailyFlight> findAllFlightForTicketPriceInput(DailyFlight dailyFlight);
	public List<SeatTypeSelect> findAllSeatTypeForTicketPriceInput();
	public int addAirport(City city);
	public int addTerminal(Airport airport);
	public int addAircraft(Aircraft aircraft);
	public int addSeatType(SeatType seatType);
	public int addFlight(Flight flight);
	public int addDailyFlight(DailyFlight dailyFlight);
	public int addTicketPrice(TicketPriceSelect ticketPriceSelect);
}
