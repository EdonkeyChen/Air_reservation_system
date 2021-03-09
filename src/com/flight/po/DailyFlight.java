package com.flight.po;

public class DailyFlight {
	private Integer daily_flight_no; 
	private String flight_no;
	private String flight_date;
	private String actual_departure_time;
	private String actual_arrival_time;
	private String estimated_departure_time;
	private String estimated_arrival_time;
	private String daily_flight_status;
	private String dAirport_name;
	private String dTerminal_name;
	private String aAirport_name;
	private String aTerminal_name;
	private String dCity;
	private String aCity;
	public Integer getDaily_flight_no() {
		return daily_flight_no;
	}
	public void setDaily_flight_no(Integer daily_flight_no) {
		this.daily_flight_no = daily_flight_no;
	}
	public String getFlight_no() {
		return flight_no;
	}
	public void setFlight_no(String flight_no) {
		this.flight_no = flight_no;
	}
	public String getFlight_date() {
		return flight_date;
	}
	public void setFlight_date(String flight_date) {
		this.flight_date = flight_date;
	}
	public String getActual_departure_time() {
		return actual_departure_time;
	}
	public void setActual_departure_time(String actual_departure_time) {
		this.actual_departure_time = actual_departure_time;
	}
	public String getActual_arrival_time() {
		return actual_arrival_time;
	}
	public void setActual_arrival_time(String actual_arrival_time) {
		this.actual_arrival_time = actual_arrival_time;
	}
	public String getEstimated_departure_time() {
		return estimated_departure_time;
	}
	public void setEstimated_departure_time(String estimated_departure_time) {
		this.estimated_departure_time = estimated_departure_time;
	}
	public String getEstimated_arrival_time() {
		return estimated_arrival_time;
	}
	public void setEstimated_arrival_time(String estimated_arrival_time) {
		this.estimated_arrival_time = estimated_arrival_time;
	}
	public String getDaily_flight_status() {
		return daily_flight_status;
	}
	public void setDaily_flight_status(String daily_flight_status) {
		this.daily_flight_status = daily_flight_status;
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
	public String getdCity() {
		return dCity;
	}
	public void setdCity(String dCity) {
		this.dCity = dCity;
	}
	public String getaCity() {
		return aCity;
	}
	public void setaCity(String aCity) {
		this.aCity = aCity;
	}
	public DailyFlight(Integer daily_flight_no, String flight_no, String flight_date, String actual_departure_time,
			String actual_arrival_time, String estimated_departure_time, String estimated_arrival_time,
			String daily_flight_status, String dAirport_name, String dTerminal_name, String aAirport_name,
			String aTerminal_name, String dCity, String aCity) {
		super();
		this.daily_flight_no = daily_flight_no;
		this.flight_no = flight_no;
		this.flight_date = flight_date;
		this.actual_departure_time = actual_departure_time;
		this.actual_arrival_time = actual_arrival_time;
		this.estimated_departure_time = estimated_departure_time;
		this.estimated_arrival_time = estimated_arrival_time;
		this.daily_flight_status = daily_flight_status;
		this.dAirport_name = dAirport_name;
		this.dTerminal_name = dTerminal_name;
		this.aAirport_name = aAirport_name;
		this.aTerminal_name = aTerminal_name;
		this.dCity = dCity;
		this.aCity = aCity;
	}
	public DailyFlight() {
		super();
	}
	@Override
	public String toString() {
		return "DailyFlight [daily_flight_no=" + daily_flight_no + ", flight_no=" + flight_no + ", flight_date="
				+ flight_date + ", actual_departure_time=" + actual_departure_time + ", actual_arrival_time="
				+ actual_arrival_time + ", estimated_departure_time=" + estimated_departure_time
				+ ", estimated_arrival_time=" + estimated_arrival_time + ", daily_flight_status=" + daily_flight_status
				+ ", dAirport_name=" + dAirport_name + ", dTerminal_name=" + dTerminal_name + ", aAirport_name="
				+ aAirport_name + ", aTerminal_name=" + aTerminal_name + ", dCity=" + dCity + ", aCity=" + aCity + "]";
	}
	public DailyFlight(Integer daily_flight_no, String actual_departure_time, String actual_arrival_time,
			String daily_flight_status) {
		super();
		this.daily_flight_no = daily_flight_no;
		this.actual_departure_time = actual_departure_time;
		this.actual_arrival_time = actual_arrival_time;
		this.daily_flight_status = daily_flight_status;
	}
	public DailyFlight(String flight_no, String flight_date, String daily_flight_status) {
		super();
		this.flight_no = flight_no;
		this.flight_date = flight_date;
		this.daily_flight_status = daily_flight_status;
	}
	
}