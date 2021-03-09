package com.flight.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.po.Aircraft;
import com.flight.po.Airport;
import com.flight.po.City;
import com.flight.po.DailyFlight;
import com.flight.po.DailyFlightSelect;
import com.flight.po.DepartureArrival;
import com.flight.po.Flight;
import com.flight.po.SeatType;
import com.flight.po.SeatTypeSelect;
import com.flight.po.Terminal;
import com.flight.po.TicketPriceSelect;
import com.flight.service.InputService;

@Controller
public class InputController {
	@Resource(name = "inputServiceImpl")
	private InputService inputServiceImpl;
	
	@RequestMapping(value = "/findAllCityForInput.do")
	public String findAllCityForInput(Model model){
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		List<Airport> aList = this.inputServiceImpl.findAllAirportForInput();
		model.addAttribute("cList",cList);
		model.addAttribute("aList",aList);
		return "Admin/Airport-Input";
	}
	
	@RequestMapping(value = "/findAllCityForFlightInput.do")
	public String findAllCityForFlightInput(Model model){
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		model.addAttribute("cList",cList);
		return "Admin/Flight-Input";
	}
	
	@RequestMapping(value = "/findAllCityForTicketPriceInput.do")
	public String findAllCityForTicketPriceInput(Model model){
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		model.addAttribute("cList",cList);
		return "Admin/TicketPrice-Input";
	}
	
	@RequestMapping(value = "/findAllCityForDailyFlightInput.do")
	public String findAllCityForDailyFlightInput(Model model){
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		model.addAttribute("cList",cList);
		return "Admin/DailyFlight-Input";
	}
	
	@RequestMapping(value = "/findAllAirportForFlightInput.do")
	public String findAllAirportForFlightInput(DepartureArrival departureArrival,Model model){
		City dCity = new City(departureArrival.getDeparture_city());
		City aCity = new City(departureArrival.getArrival_city());
		List<Airport> dAirportList = this.inputServiceImpl.findAllAirportForFlightInput(dCity);
		List<Airport> aAirportList = this.inputServiceImpl.findAllAirportForFlightInput(aCity);
		model.addAttribute("dAirportList",dAirportList);
		model.addAttribute("aAirportList",aAirportList);
		return "Admin/Flight-Input";
	}
	
	@RequestMapping(value = "/findAllTerminalForFlightInput.do")
	public String findAllTerminalForFlightInput(DepartureArrival departureArrival,Model model){
		Airport airport = new Airport(1, 1, "1", "1");
		List<Airport> dAirportList = new ArrayList<>();
		List<Airport> aAirportList = new ArrayList<>();
		dAirportList.add(airport);
		aAirportList.add(airport);
		model.addAttribute("dAirportList",dAirportList);
		model.addAttribute("aAirportList",aAirportList);
		Airport dAirport = new Airport(departureArrival.getDeparture_airport());
		Airport aAirport = new Airport(departureArrival.getArrival_airport());
		List<Terminal> dtList = this.inputServiceImpl.findAllTerminalForFlightInput(dAirport);
		List<Terminal> atList = this.inputServiceImpl.findAllTerminalForFlightInput(aAirport);
		List<Aircraft> aircrafts = this.inputServiceImpl.findAllAircraftForInput();
		model.addAttribute("dtList",dtList);
		model.addAttribute("atList",atList);
		model.addAttribute("aircrafts",aircrafts);
		return "Admin/Flight-Input";
	}
	
	@RequestMapping(value = "/findAllFlightForDailyFlightInput.do")
	public String findAllFlightForDailyFlightInput(DailyFlightSelect dailyFlightSelect,Model model){
		List<Flight> fList = this.inputServiceImpl.findAllFlightForDailyFlightInput(dailyFlightSelect); 
		model.addAttribute("fList",fList);
		return "Admin/DailyFlight-Input";
	}
	
	@RequestMapping(value = "/findAllFlightForTicketPriceInput.do")
	public String findAllFlightForTicketPriceInput(DailyFlight dailyFlight,Model model){
		List<DailyFlight> fList = this.inputServiceImpl.findAllFlightForTicketPriceInput(dailyFlight);
		List<SeatTypeSelect> sList = this.inputServiceImpl.findAllSeatTypeForTicketPriceInput();
		model.addAttribute("fList",fList);
		model.addAttribute("sList",sList);
		return "Admin/TicketPrice-Input";
	}
	
	@RequestMapping(value = "/addAirport.do")
	public String addAirport(City city,Model model){
		inputServiceImpl.addAirport(city);
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		List<Airport> aList = this.inputServiceImpl.findAllAirportForInput();
		model.addAttribute("cList",cList);
		model.addAttribute("aList",aList);
		model.addAttribute("addAirportFlag","addAirportFlag");
		return "Admin/Airport-Input";
	}
	
	@RequestMapping(value = "/addTerminal.do")
	public String addTerminal(Airport airport,Model model){
		inputServiceImpl.addTerminal(airport);
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		List<Airport> aList = this.inputServiceImpl.findAllAirportForInput();
		model.addAttribute("cList",cList);
		model.addAttribute("aList",aList);
		model.addAttribute("addTerminalFlag","addTerminalFlag");
		return "Admin/Airport-Input";
	}
	
	@RequestMapping(value = "/addAircraft.do")
	public String addAircraft(Aircraft aircraft,Model model){
		inputServiceImpl.addAircraft(aircraft);
		model.addAttribute("addAircraftFlag","addAircraftFlag");
		return "Admin/Aircraft-Input";
	}
	
	@RequestMapping(value = "/addFlight.do")
	public String addFlight(Flight flight,Model model){
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		model.addAttribute("cList",cList);
		inputServiceImpl.addFlight(flight);
		model.addAttribute("addFlightFlag","addFlightFlag");
		return "Admin/Flight-Input";
	}
	
	@RequestMapping(value = "/addDailyFlight.do")
	public String addDailyFlight(DailyFlight dailyFlight,Model model){
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		model.addAttribute("cList",cList);
		inputServiceImpl.addDailyFlight(dailyFlight);
		model.addAttribute("addDailyFlightFlag","addDailyFlightFlag");
		return "Admin/DailyFlight-Input";
	}
	
	@RequestMapping(value = "/addTicketPrice.do")
	public String addTicketPrice(TicketPriceSelect ticketPriceSelect,Model model){
		List<City> cList = this.inputServiceImpl.findAllCityForInput();
		inputServiceImpl.addTicketPrice(ticketPriceSelect);
		model.addAttribute("cList",cList);
		model.addAttribute("addTicketPriceFlag","addTicketPriceFlag");
		return "Admin/TicketPrice-Input";
	}
}

