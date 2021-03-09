package com.flight.po;

import java.math.BigDecimal;

public class ReportCalculate {
	private String flight_no;
	private Long total_ticket;
	private BigDecimal total_sold_ticket;
	private BigDecimal total_tevenue;
	private BigDecimal on_time_rate;
	private Long flight_count;
	public ReportCalculate(String flight_no, Long total_ticket, BigDecimal total_sold_ticket, BigDecimal total_tevenue,
			BigDecimal on_time_rate, Long flight_count) {
		super();
		this.flight_no = flight_no;
		this.total_ticket = total_ticket;
		this.total_sold_ticket = total_sold_ticket;
		this.total_tevenue = total_tevenue;
		this.on_time_rate = on_time_rate;
		this.flight_count = flight_count;
	}
	public String getFlight_no() {
		return flight_no;
	}
	public void setFlight_no(String flight_no) {
		this.flight_no = flight_no;
	}
	public Long getTotal_ticket() {
		return total_ticket;
	}
	public void setTotal_ticket(Long total_ticket) {
		this.total_ticket = total_ticket;
	}
	public BigDecimal getTotal_sold_ticket() {
		return total_sold_ticket;
	}
	public void setTotal_sold_ticket(BigDecimal total_sold_ticket) {
		this.total_sold_ticket = total_sold_ticket;
	}
	public BigDecimal getTotal_tevenue() {
		return total_tevenue;
	}
	public void setTotal_tevenue(BigDecimal total_tevenue) {
		this.total_tevenue = total_tevenue;
	}
	public BigDecimal getOn_time_rate() {
		return on_time_rate;
	}
	public void setOn_time_rate(BigDecimal on_time_rate) {
		this.on_time_rate = on_time_rate;
	}
	public Long getFlight_count() {
		return flight_count;
	}
	public void setFlight_count(Long flight_count) {
		this.flight_count = flight_count;
	}
	@Override
	public String toString() {
		return "ReportCalculate [flight_no=" + flight_no + ", total_ticket=" + total_ticket + ", total_sold_ticket="
				+ total_sold_ticket + ", total_tevenue=" + total_tevenue + ", on_time_rate=" + on_time_rate
				+ ", flight_count=" + flight_count + "]";
	}
	
	
	
}
