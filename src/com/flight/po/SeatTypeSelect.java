package com.flight.po;

public class SeatTypeSelect {
	private Integer seat_type_no;
	private String seat_type_name;
	private String luggage_limit;
	private String refund_change_rules;
	private Integer real_type;
	public Integer getSeat_type_no() {
		return seat_type_no;
	}
	public void setSeat_type_no(Integer seat_type_no) {
		this.seat_type_no = seat_type_no;
	}
	public String getSeat_type_name() {
		return seat_type_name;
	}
	public void setSeat_type_name(String seat_type_name) {
		this.seat_type_name = seat_type_name;
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
	public Integer getReal_type() {
		return real_type;
	}
	public void setReal_type(Integer real_type) {
		this.real_type = real_type;
	}
	public SeatTypeSelect(Integer seat_type_no, String seat_type_name, String luggage_limit, String refund_change_rules,
			Integer real_type) {
		super();
		this.seat_type_no = seat_type_no;
		this.seat_type_name = seat_type_name;
		this.luggage_limit = luggage_limit;
		this.refund_change_rules = refund_change_rules;
		this.real_type = real_type;
	}
	public SeatTypeSelect() {
		super();
	}
	@Override
	public String toString() {
		return "SeatTypeSelect [seat_type_no=" + seat_type_no + ", seat_type_name=" + seat_type_name
				+ ", luggage_limit=" + luggage_limit + ", refund_change_rules=" + refund_change_rules + ", real_type="
				+ real_type + "]";
	}
	
}
