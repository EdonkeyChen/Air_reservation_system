package com.flight.po;

public class City {
	private Integer city_no;
	private String city_name;
	private String airport_name;
	public Integer getCity_no() {
		return city_no;
	}
	public void setCity_no(Integer city_no) {
		this.city_no = city_no;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getAirport_name() {
		return airport_name;
	}
	public void setAirport_name(String airport_name) {
		this.airport_name = airport_name;
	}
	public City(Integer city_no, String city_name, String airport_name) {
		super();
		this.city_no = city_no;
		this.city_name = city_name;
		this.airport_name = airport_name;
	}
	public City() {
		super();
	}
	@Override
	public String toString() {
		return "City [city_no=" + city_no + ", city_name=" + city_name + ", airport_name=" + airport_name + "]";
	}
	public City(String city_name) {
		super();
		this.city_name = city_name;
	}
	
}
