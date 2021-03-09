package com.flight.po;

public class Aircraft {
	private Integer aircraft_no;
	private String aircraft_name;
	public Integer getAircraft_no() {
		return aircraft_no;
	}
	public void setAircraft_no(Integer aircraft_no) {
		this.aircraft_no = aircraft_no;
	}
	public String getAircraft_name() {
		return aircraft_name;
	}
	public void setAircraft_name(String aircraft_name) {
		this.aircraft_name = aircraft_name;
	}
	public Aircraft(Integer aircraft_no, String aircraft_name) {
		super();
		this.aircraft_no = aircraft_no;
		this.aircraft_name = aircraft_name;
	}
	public Aircraft() {
		super();
	}
	@Override
	public String toString() {
		return "Aircraft [aircraft_no=" + aircraft_no + ", aircraft_name=" + aircraft_name + "]";
	}
}
