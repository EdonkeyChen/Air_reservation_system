package com.flight.po;

public class TicketPrice {
	private Integer ticket_price_no;
	private Integer seat_type_no;
	private Integer daily_flight_no;
	private Integer price;
	private Integer ticket_num;
	private String luggage_limit;
	private String refund_change_rules;
	private String seat_type_name;
	public Integer getTicket_price_no() {
		return ticket_price_no;
	}
	public void setTicket_price_no(Integer ticket_price_no) {
		this.ticket_price_no = ticket_price_no;
	}
	public Integer getSeat_type_no() {
		return seat_type_no;
	}
	public void setSeat_type_no(Integer seat_type_no) {
		this.seat_type_no = seat_type_no;
	}
	public Integer getDaily_flight_no() {
		return daily_flight_no;
	}
	public void setDaily_flight_no(Integer daily_flight_no) {
		this.daily_flight_no = daily_flight_no;
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
	public String getLuggage_limit() {
		return luggage_limit;
	}
	public void setLuggage_limit(String luggage_limit) {
		this.luggage_limit = luggage_limit;
	}
	public String getRefund_change_rules() {
		return refund_change_rules;
	}
	public void setRefund_change_rules(String refund_change_rules) {
		this.refund_change_rules = refund_change_rules;
	}
	public String getSeat_type_name() {
		return seat_type_name;
	}
	public void setSeat_type_name(String seat_type_name) {
		this.seat_type_name = seat_type_name;
	}
	public TicketPrice(Integer ticket_price_no, Integer seat_type_no, Integer daily_flight_no, Integer price,
			Integer ticket_num, String luggage_limit, String refund_change_rules, String seat_type_name) {
		super();
		this.ticket_price_no = ticket_price_no;
		this.seat_type_no = seat_type_no;
		this.daily_flight_no = daily_flight_no;
		this.price = price;
		this.ticket_num = ticket_num;
		this.luggage_limit = luggage_limit;
		this.refund_change_rules = refund_change_rules;
		this.seat_type_name = seat_type_name;
	}
	public TicketPrice() {
		super();
	}
	@Override
	public String toString() {
		return "TicketPrice [ticket_price_no=" + ticket_price_no + ", seat_type_no=" + seat_type_no
				+ ", daily_flight_no=" + daily_flight_no + ", price=" + price + ", ticket_num=" + ticket_num
				+ ", luggage_limit=" + luggage_limit + ", refund_change_rules=" + refund_change_rules
				+ ", seat_type_name=" + seat_type_name + "]";
	}
	
	
	
}
