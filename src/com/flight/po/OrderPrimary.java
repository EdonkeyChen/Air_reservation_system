package com.flight.po;

public class OrderPrimary {
	private Integer account_id;
	private Integer total_price;
	private String order_date;
	private Integer passenger_num;
	private Integer order_status;
	private String payer_name;
	private String payer_tel;
	private String payer_email;
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
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public Integer getPassenger_num() {
		return passenger_num;
	}
	public void setPassenger_num(Integer passenger_num) {
		this.passenger_num = passenger_num;
	}
	public Integer getOrder_status() {
		return order_status;
	}
	public void setOrder_status(Integer order_status) {
		this.order_status = order_status;
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
	public OrderPrimary(Integer account_id, Integer total_price, String order_date, Integer passenger_num,
			Integer order_status, String payer_name, String payer_tel, String payer_email) {
		super();
		this.account_id = account_id;
		this.total_price = total_price;
		this.order_date = order_date;
		this.passenger_num = passenger_num;
		this.order_status = order_status;
		this.payer_name = payer_name;
		this.payer_tel = payer_tel;
		this.payer_email = payer_email;
	}
	public OrderPrimary() {
		super();
	}
	@Override
	public String toString() {
		return "OrderPrimary [account_id=" + account_id + ", total_price=" + total_price + ", order_date=" + order_date
				+ ", passenger_num=" + passenger_num + ", order_status=" + order_status + ", payer_name=" + payer_name
				+ ", payer_tel=" + payer_tel + ", payer_email=" + payer_email + "]";
	}
	
	
}
