package com.flight.po;

import java.util.List;

public class Flight { 
	private String flight_no;
	private Integer terminal_no;
	private Integer Ter_terminal_no;
	private Integer aircraft_no;
	private String scheduled_departure_time;
	private String scheduled_arrival_time;
	private String catering;
	private String flight_time;
	private String dAirport_name;
	private String dTerminal_name;
	private String aAirport_name;
	private String aTerminal_name;
	private String aircraft_name;
	
	private List<TicketPrice> ticketpriceList;

	public String getFlight_no() {
		return flight_no;
	}

	public void setFlight_no(String flight_no) {
		this.flight_no = flight_no;
	}

	public Integer getTerminal_no() {
		return terminal_no;
	}

	public void setTerminal_no(Integer terminal_no) {
		this.terminal_no = terminal_no;
	}

	public Integer getTer_terminal_no() {
		return Ter_terminal_no;
	}

	public void setTer_terminal_no(Integer ter_terminal_no) {
		Ter_terminal_no = ter_terminal_no;
	}

	public Integer getAircraft_no() {
		return aircraft_no;
	}

	public void setAircraft_no(Integer aircraft_no) {
		this.aircraft_no = aircraft_no;
	}

	public String getScheduled_departure_time() {
		return scheduled_departure_time;
	}

	public void setScheduled_departure_time(String scheduled_departure_time) {
		this.scheduled_departure_time = scheduled_departure_time;
	}

	public String getScheduled_arrival_time() {
		return scheduled_arrival_time;
	}

	public void setScheduled_arrival_time(String scheduled_arrival_time) {
		this.scheduled_arrival_time = scheduled_arrival_time;
	}

	public String getCatering() {
		return catering;
	}

	public void setCatering(String catering) {
		this.catering = catering;
	}

	public String getFlight_time() {
		return flight_time;
	}

	public void setFlight_time(String flight_time) {
		this.flight_time = flight_time;
	}

	public String getdAirport_name() {
		return dAirport_name;
	}

	public void setdAirport_name(String dAirport_name) {
		this.dAirport_name = dAirport_name;
	}

	public String getdTerminal_name() {
		return dTerminal_name;
	}

	public void setdTerminal_name(String dTerminal_name) {
		this.dTerminal_name = dTerminal_name;
	}

	public String getaAirport_name() {
		return aAirport_name;
	}

	public void setaAirport_name(String aAirport_name) {
		this.aAirport_name = aAirport_name;
	}

	public String getaTerminal_name() {
		return aTerminal_name;
	}

	public void setaTerminal_name(String aTerminal_name) {
		this.aTerminal_name = aTerminal_name;
	}

	public String getAircraft_name() {
		return aircraft_name;
	}

	public void setAircraft_name(String aircraft_name) {
		this.aircraft_name = aircraft_name;
	}

	public List<TicketPrice> getTicketpriceList() {
		return ticketpriceList;
	}

	public void setTicketpriceList(List<TicketPrice> ticketpriceList) {
		this.ticketpriceList = ticketpriceList;
	}

	public Flight(String flight_no, Integer terminal_no, Integer ter_terminal_no, Integer aircraft_no,
			String scheduled_departure_time, String scheduled_arrival_time, String catering, String flight_time,
			String dAirport_name, String dTerminal_name, String aAirport_name, String aTerminal_name,
			String aircraft_name, List<TicketPrice> ticketpriceList) {
		super();
		this.flight_no = flight_no;
		this.terminal_no = terminal_no;
		Ter_terminal_no = ter_terminal_no;
		this.aircraft_no = aircraft_no;
		this.scheduled_departure_time = scheduled_departure_time;
		this.scheduled_arrival_time = scheduled_arrival_time;
		this.catering = catering;
		this.flight_time = flight_time;
		this.dAirport_name = dAirport_name;
		this.dTerminal_name = dTerminal_name;
		this.aAirport_name = aAirport_name;
		this.aTerminal_name = aTerminal_name;
		this.aircraft_name = aircraft_name;
		this.ticketpriceList = ticketpriceList;
	}

	public Flight() {
		super();
	}

	@Override
	public String toString() {
		return "Flight [flight_no=" + flight_no + ", terminal_no=" + terminal_no + ", Ter_terminal_no="
				+ Ter_terminal_no + ", aircraft_no=" + aircraft_no + ", scheduled_departure_time="
				+ scheduled_departure_time + ", scheduled_arrival_time=" + scheduled_arrival_time + ", catering="
				+ catering + ", flight_time=" + flight_time + ", dAirport_name=" + dAirport_name + ", dTerminal_name="
				+ dTerminal_name + ", aAirport_name=" + aAirport_name + ", aTerminal_name=" + aTerminal_name
				+ ", aircraft_name=" + aircraft_name + ", ticketpriceList=" + ticketpriceList + "]";
	}
}
