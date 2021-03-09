package com.flight.po;

public class DailyFlightSelect {
	private String departure_city;
	private String arrival_city;
	private String flight_date;
	private String flight_no;
	public String getDeparture_city() {
		return departure_city;
	}
	public void setDeparture_city(String departure_city) {
		this.departure_city = departure_city;
	}
	public String getArrival_city() {
		return arrival_city;
	}
	public void setArrival_city(String arrival_city) {
		this.arrival_city = arrival_city;
	}
	public String getFlight_date() {
		return flight_date;
	}
	public void setFlight_date(String flight_date) {
		this.flight_date = flight_date;
	}
	public String getFlight_no() {
		return flight_no;
	}
	public void setFlight_no(String flight_no) {
		this.flight_no = flight_no;
	}
	public DailyFlightSelect(String departure_city, String arrival_city, String flight_date) {
		super();
		this.departure_city = departure_city;
		this.arrival_city = arrival_city;
		this.flight_date = flight_date;
	}
	public DailyFlightSelect(String flight_no,String flight_date) {
		super();
		this.flight_date = flight_date;
		this.flight_no = flight_no;
	}
	public DailyFlightSelect() {
		super();
	}
}
