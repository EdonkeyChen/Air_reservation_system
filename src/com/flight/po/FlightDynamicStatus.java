package com.flight.po;

public class FlightDynamicStatus {
	private String flight_date;
	private String start_time;
	private String end_time;
	public String getFlight_date() {
		return flight_date;
	}
	public void setFlight_date(String flight_date) {
		this.flight_date = flight_date;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public FlightDynamicStatus(String flight_date, String start_time, String end_time) {
		super();
		this.flight_date = flight_date;
		this.start_time = start_time;
		this.end_time = end_time;
	}
	@Override
	public String toString() {
		return "FlightDynamicStatus [flight_date=" + flight_date + ", start_time=" + start_time + ", end_time="
				+ end_time + "]";
	}
}
