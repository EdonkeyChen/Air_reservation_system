package com.flight.po;

public class SeatType {
	private Integer seat_type_no;
	private String seat_type_name;
	private String luggage_limit;
	private String refund_change_rules;
	private Integer real_type;
	private String change1;
	private String change2;
	private String change3;
	private String change4;
	private String refund1;
	private String refund2;
	private String refund3;
	private String refund4;
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
	public String getChange1() {
		return change1;
	}
	public void setChange1(String change1) {
		this.change1 = change1;
	}
	public String getChange2() {
		return change2;
	}
	public void setChange2(String change2) {
		this.change2 = change2;
	}
	public String getChange3() {
		return change3;
	}
	public void setChange3(String change3) {
		this.change3 = change3;
	}
	public String getChange4() {
		return change4;
	}
	public void setChange4(String change4) {
		this.change4 = change4;
	}
	public String getRefund1() {
		return refund1;
	}
	public void setRefund1(String refund1) {
		this.refund1 = refund1;
	}
	public String getRefund2() {
		return refund2;
	}
	public void setRefund2(String refund2) {
		this.refund2 = refund2;
	}
	public String getRefund3() {
		return refund3;
	}
	public void setRefund3(String refund3) {
		this.refund3 = refund3;
	}
	public String getRefund4() {
		return refund4;
	}
	public void setRefund4(String refund4) {
		this.refund4 = refund4;
	}
	public SeatType(Integer seat_type_no, String seat_type_name, String luggage_limit, String refund_change_rules,
			Integer real_type, String change1, String change2, String change3, String change4, String refund1,
			String refund2, String refund3, String refund4) {
		super();
		this.seat_type_no = seat_type_no;
		this.seat_type_name = seat_type_name;
		this.luggage_limit = luggage_limit;
		this.refund_change_rules = refund_change_rules;
		this.real_type = real_type;
		this.change1 = change1;
		this.change2 = change2;
		this.change3 = change3;
		this.change4 = change4;
		this.refund1 = refund1;
		this.refund2 = refund2;
		this.refund3 = refund3;
		this.refund4 = refund4;
	}
	public SeatType(String seat_type_name, String refund_change_rules, Integer real_type) {
		super();
		this.seat_type_name = seat_type_name;
		this.refund_change_rules = refund_change_rules;
		this.real_type = real_type;
	}
	
	
}
