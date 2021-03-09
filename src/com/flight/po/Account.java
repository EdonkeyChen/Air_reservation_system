package com.flight.po;

public class Account {
	private Integer account_id;
	private String account_tel;
	private String account_name;
	private String account_pwd;
	private Integer account_type;
	public Integer getAccount_id() {
		return account_id;
	}
	public void setAccount_id(Integer account_id) {
		this.account_id = account_id;
	}
	public String getAccount_tel() {
		return account_tel;
	}
	public void setAccount_tel(String account_tel) {
		this.account_tel = account_tel;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	public String getAccount_pwd() {
		return account_pwd;
	}
	public void setAccount_pwd(String account_pwd) {
		this.account_pwd = account_pwd;
	}
	public Integer getAccount_type() {
		return account_type;
	}
	public void setAccount_type(Integer account_type) {
		this.account_type = account_type;
	}
	public Account(Integer account_id, String account_tel, String account_name, String account_pwd,
			Integer account_type) {
		super();
		this.account_id = account_id;
		this.account_tel = account_tel;
		this.account_name = account_name;
		this.account_pwd = account_pwd;
		this.account_type = account_type;
	}
	public Account(Integer account_id, String account_tel, String account_name, String account_pwd) {
		super();
		this.account_id = account_id;
		this.account_tel = account_tel;
		this.account_name = account_name;
		this.account_pwd = account_pwd;
	}
	public Account() {
		super();
	}
	@Override
	public String toString() {
		return "Account [account_id=" + account_id + ", account_tel=" + account_tel + ", account_name=" + account_name
				+ ", account_pwd=" + account_pwd + ", account_type=" + account_type + "]";
	}
	
}
