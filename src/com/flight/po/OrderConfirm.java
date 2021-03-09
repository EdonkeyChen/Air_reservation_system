package com.flight.po;

import java.util.List;

public class OrderConfirm {
	private Integer account_id;
	private Integer total_price;
	private Integer passenger_num;
	private String payer_name;
	private String payer_tel;
	private String payer_email;
	private Integer ticket_price_no;
	private Integer ticket_price;
	private List<Passenger> lPassengers;
	public Integer getAccount_id() {
		return account_id;
	}
	public void setAccount_id(Integer account_id) {
		this.account_id = account_id;
	}
	public Integer getTotal_price() {
		return total_price;
	}
	public void setTotal_price(Integer total_price) {
		this.total_price = total_price;
	}
	public Integer getPassenger_num() {
		return passenger_num;
	}
	public void setPassenger_num(Integer passenger_num) {
		this.passenger_num = passenger_num;
	}
	public String getPayer_name() {
		return payer_name;
	}
	public void setPayer_name(String payer_name) {
		this.payer_name = payer_name;
	}
	public String getPayer_tel() {
		return payer_tel;
	}
	public void setPayer_tel(String payer_tel) {
		this.payer_tel = payer_tel;
	}
	public String getPayer_email() {
		return payer_email;
	}
	public void setPayer_email(String payer_email) {
		this.payer_email = payer_email;
	}
	public Integer getTicket_price_no() {
		return ticket_price_no;
	}
	public void setTicket_price_no(Integer ticket_price_no) {
		this.ticket_price_no = ticket_price_no;
	}
	public Integer getTicket_price() {
		return ticket_price;
	}
	public void setTicket_price(Integer ticket_price) {
		this.ticket_price = ticket_price;
	}
	public List<Passenger> getlPassengers() {
		return lPassengers;
	}
	public void setlPassengers(List<Passenger> lPassengers) {
		this.lPassengers = lPassengers;
	}
	public OrderConfirm(Integer account_id, Integer total_price, Integer passenger_num, String payer_name,
			String payer_tel, String payer_email, Integer ticket_price_no, Integer ticket_price,
			List<Passenger> lPassengers) {
		super();
		this.account_id = account_id;
		this.total_price = total_price;
		this.passenger_num = passenger_num;
		this.payer_name = payer_name;
		this.payer_tel = payer_tel;
		this.payer_email = payer_email;
		this.ticket_price_no = ticket_price_no;
		this.ticket_price = ticket_price;
		this.lPassengers = lPassengers;
	}
	public OrderConfirm() {
		super();
	}
	@Override
	public String toString() {
		return "OrderConfirm [account_id=" + account_id + ", total_price=" + total_price + ", passenger_num="
				+ passenger_num + ", payer_name=" + payer_name + ", payer_tel=" + payer_tel + ", payer_email="
				+ payer_email + ", ticket_price_no=" + ticket_price_no + ", ticket_price=" + ticket_price
				+ ", lPassengers=" + lPassengers + "]";
	}
	
}
