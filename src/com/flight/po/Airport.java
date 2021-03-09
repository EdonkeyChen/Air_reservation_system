package com.flight.po;

public class Airport {
	private Integer airport_no;
	private Integer city_no;
	private String airport_name;
	private String terminal_name;
	public Integer getAirport_no() {
		return airport_no;
	}
	public void setAirport_no(Integer airport_no) {
		this.airport_no = airport_no;
	}
	public Integer getCity_no() {
		return city_no;
	}
	public void setCity_no(Integer city_no) {
		this.city_no = city_no;
	}
	public String getAirport_name() {
		return airport_name;
	}
	public void setAirport_name(String airport_name) {
		this.airport_name = airport_name;
	}
	public String getTerminal_name() {
		return terminal_name;
	}
	public void setTerminal_name(String terminal_name) {
		this.terminal_name = terminal_name;
	}
	public Airport(Integer airport_no, Integer city_no, String airport_name, String terminal_name) {
		super();
		this.airport_no = airport_no;
		this.city_no = city_no;
		this.airport_name = airport_name;
		this.terminal_name = terminal_name;
	}
	public Airport() {
		super();
	}
	@Override
	public String toString() {
		return "Airport [airport_no=" + airport_no + ", city_no=" + city_no + ", airport_name=" + airport_name
				+ ", terminal_name=" + terminal_name + "]";
	}
	public Airport(String airport_name) {
		super();
		this.airport_name = airport_name;
	}
	
}
