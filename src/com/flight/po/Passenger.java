package com.flight.po;

public class Passenger {
	private Integer passenger_no;
	private String passenger_name;
	private String certificate_type;
	private String certificate_no;
	private String passenger_tel;
	public Integer getPassenger_no() {
		return passenger_no;
	}
	public void setPassenger_no(Integer passenger_no) {
		this.passenger_no = passenger_no;
	}
	public String getPassenger_name() {
		return passenger_name;
	}
	public void setPassenger_name(String passenger_name) {
		this.passenger_name = passenger_name;
	}
	public String getCertificate_type() {
		return certificate_type;
	}
	public void setCertificate_type(String certificate_type) {
		this.certificate_type = certificate_type;
	}
	public String getCertificate_no() {
		return certificate_no;
	}
	public void setCertificate_no(String certificate_no) {
		this.certificate_no = certificate_no;
	}
	public String getPassenger_tel() {
		return passenger_tel;
	}
	public void setPassenger_tel(String passenger_tel) {
		this.passenger_tel = passenger_tel;
	}
	public Passenger(Integer passenger_no, String passenger_name, String certificate_type, String certificate_no,
			String passenger_tel) {
		super();
		this.passenger_no = passenger_no;
		this.passenger_name = passenger_name;
		this.certificate_type = certificate_type;
		this.certificate_no = certificate_no;
		this.passenger_tel = passenger_tel;
	}
	public Passenger() {
		super();
	}
	@Override
	public String toString() {
		return "Passenger [passenger_no=" + passenger_no + ", passenger_name=" + passenger_name + ", certificate_type="
				+ certificate_type + ", certificate_no=" + certificate_no + ", passenger_tel=" + passenger_tel + "]";
	}
	
	
}
