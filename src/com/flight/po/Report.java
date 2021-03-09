package com.flight.po;

public class Report {
	private String flight_no;
	private String flight_date;
	private Integer price;
	private Integer ticket_num;
	private String daily_flight_status;
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
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getTicket_num() {
		return ticket_num;
	}
	public void setTicket_num(Integer ticket_num) {
		this.ticket_num = ticket_num;
	}
	public Report(String flight_no, String flight_date, Integer price, Integer ticket_num, String daily_flight_status) {
		super();
		this.flight_no = flight_no;
		this.flight_date = flight_date;
		this.price = price;
		this.ticket_num = ticket_num;
		this.daily_flight_status = daily_flight_status;
	}
	public String getDaily_flight_status() {
		return daily_flight_status;
	}
	public void setDaily_flight_status(String daily_flight_status) {
		this.daily_flight_status = daily_flight_status;
	}
	public Report() {
		super();
	}
	@Override
	public String toString() {
		return "Report [flight_no=" + flight_no + ", flight_date=" + flight_date + ", price=" + price + ", ticket_num="
				+ ticket_num + ", daily_flight_status=" + daily_flight_status + "]";
	}
	
}
