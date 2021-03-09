package com.flight.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.flight.mapper.InputMapper;
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
import com.flight.service.InputService;

@Service
public class InputServiceImpl implements InputService{
	@Resource(name = "inputMapper")
	private InputMapper inputMapper;

	@Override
	public List<City> findAllCityForInput() {
		return inputMapper.findAllCityForInput();
	}

	@Override
	public List<Airport> findAllAirportForInput() {
		return inputMapper.findAllAirportForInput();
	}

	@Override
	public int addAirport(City city) {
		return inputMapper.addAirport(city);
	}

	@Override
	public int addTerminal(Airport airport) {
		return inputMapper.addTerminal(airport);
	}

	@Override
	public int addAircraft(Aircraft aircraft) {
		return inputMapper.addAircraft(aircraft);
	}

	@Override
	public int addSeatType(SeatType seatType) {
		return inputMapper.addSeatType(seatType);
	}

	@Override
	public List<City> findAllCityForFlightInput() {
		return inputMapper.findAllCityForFlightInput();
	}

	@Override
	public List<Airport> findAllAirportForFlightInput(City city) {
		return inputMapper.findAllAirportForFlightInput(city);
	}

	@Override
	public List<Terminal> findAllTerminalForFlightInput(Airport airport) {
		return inputMapper.findAllTerminalForFlightInput(airport);
	}

	@Override
	public List<Aircraft> findAllAircraftForInput() {
		return inputMapper.findAllAircraftForInput();
	}

	@Override
	public int addFlight(Flight flight) {
		return inputMapper.addFlight(flight);
	}

	@Override
	public List<Flight> findAllFlightForDailyFlightInput(DailyFlightSelect dailyFlightSelect) {
		return inputMapper.findAllFlightForDailyFlightInput(dailyFlightSelect);
	}

	@Override
	public List<City> findAllCityForDailyFlightInput() {
		return inputMapper.findAllCityForDailyFlightInput();
	}

	@Override
	public int addDailyFlight(DailyFlight dailyFlight) {
		return inputMapper.addDailyFlight(dailyFlight);
	}

	@Override
	public List<City> findAllCityForTicketPriceInput() {
		return inputMapper.findAllCityForTicketPriceInput();
	}

	@Override
	public List<DailyFlight> findAllFlightForTicketPriceInput(DailyFlight dailyFlight) {
		return inputMapper.findAllFlightForTicketPriceInput(dailyFlight);
	}

	@Override
	public List<SeatTypeSelect> findAllSeatTypeForTicketPriceInput() {
		return inputMapper.findAllSeatTypeForTicketPriceInput();
	}

	@Override
	public int addTicketPrice(TicketPriceSelect ticketPiceSelect) {
		return inputMapper.addTicketPrice(ticketPiceSelect);
	}
}
