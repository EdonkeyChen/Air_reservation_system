package com.flight.po;

public class OrderDetail {
	private Integer ticket_price_no;
	private Integer passenger_no;
	private Integer order_primary_no;
	private Integer ticket_price;
	public Integer getTicket_price_no() {
		return ticket_price_no;
	}
	public void setTicket_price_no(Integer ticket_price_no) {
		this.ticket_price_no = ticket_price_no;
	}
	public Integer getPassenger_no() {
		return passenger_no;
	}
	public void setPassenger_no(Integer passenger_no) {
		this.passenger_no = passenger_no;
	}
	public Integer getOrder_primary_no() {
		return order_primary_no;
	}
	public void setOrder_primary_no(Integer order_primary_no) {
		this.order_primary_no = order_primary_no;
	}
	public Integer getTicket_price() {
		return ticket_price;
	}
	public void setTicket_price(Integer ticket_price) {
		this.ticket_price = ticket_price;
	}
	public OrderDetail(Integer ticket_price_no, Integer passenger_no, Integer order_primary_no, Integer ticket_price) {
		super();
		this.ticket_price_no = ticket_price_no;
		this.passenger_no = passenger_no;
		this.order_primary_no = order_primary_no;
		this.ticket_price = ticket_price;
	}
	
	
}
