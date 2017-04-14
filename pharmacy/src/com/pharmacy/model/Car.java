package com.pharmacy.model;

import java.util.Date;

public class Car {
	private int carid;
	private int _user_id;
	private int _drug_id;
	private int number;
	private Date time;
	private User user;
	private Drug drug;
	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public int get_user_id() {
		return _user_id;
	}
	public void set_user_id(int _user_id) {
		this._user_id = _user_id;
	}
	public int get_drug_id() {
		return _drug_id;
	}
	public void set_drug_id(int _drug_id) {
		this._drug_id = _drug_id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Drug getDrug() {
		return drug;
	}
	public void setDrug(Drug drug) {
		this.drug = drug;
	}
	
	
}
