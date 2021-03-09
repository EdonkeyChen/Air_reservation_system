package com.flight.po;

public class TicketPriceSelect {
	private String flight_no;
	private String flight_date;
	private Integer seat_type_no;
	private Integer price;
	private Integer ticket_num;
	private Integer ticket_num_og;
	public TicketPriceSelect(String flight_no, String flight_date, Integer seat_type_no, Integer price,
			Integer ticket_num, Integer ticket_num_og) {
		super();
		this.flight_no = flight_no;
		this.flight_date = flight_date;
		this.seat_type_no = seat_type_no;
		this.price = price;
		this.ticket_num = ticket_num;
		this.ticket_num_og = ticket_num_og;
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
	public Integer getSeat_type_no() {
		return seat_type_no;
	}
	public void setSeat_type_no(Integer seat_type_no) {
		this.seat_type_no = seat_type_no;
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
	public Integer getTicket_num_og() {
		return ticket_num_og;
	}
	public void setTicket_num_og(Integer ticket_num_og) {
		this.ticket_num_og = ticket_num_og;
	}
	public TicketPriceSelect() {
		super();
	}
	@Override
	public String toString() {
		return "TicketPriceSelect [flight_no=" + flight_no + ", flight_date=" + flight_date + ", seat_type_no="
				+ seat_type_no + ", price=" + price + ", ticket_num=" + ticket_num + ", ticket_num_og=" + ticket_num_og
				+ "]";
	}
	
	
	
}
