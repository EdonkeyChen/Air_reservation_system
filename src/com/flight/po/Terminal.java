package com.flight.po;

public class Terminal {
	private Integer terminal_no;
	private Integer airport_no;
	private String terminal_name;
	public Integer getTerminal_no() {
		return terminal_no;
	}
	public void setTerminal_no(Integer terminal_no) {
		this.terminal_no = terminal_no;
	}
	public Integer getAirport_no() {
		return airport_no;
	}
	public void setAirport_no(Integer airport_no) {
		this.airport_no = airport_no;
	}
	public String getTerminal_name() {
		return terminal_name;
	}
	public void setTerminal_name(String terminal_name) {
		this.terminal_name = terminal_name;
	}
	public Terminal(Integer terminal_no, Integer airport_no, String terminal_name) {
		super();
		this.terminal_no = terminal_no;
		this.airport_no = airport_no;
		this.terminal_name = terminal_name;
	}
	public Terminal() {
		super();
	}
	
}
