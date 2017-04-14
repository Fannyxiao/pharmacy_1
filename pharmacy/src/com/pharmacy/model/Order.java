package com.pharmacy.model;

import java.util.Date;

public class Order {
	private int orderid;
	private int _user_id;
	private String memo;//备注
	private Date orderdate;//下单时间
	private Date shipdate;//发货时间
	private int hassend;//是否发货
	private int hasreceive;//是否收货
	private String receive;//收货地址
	private User user;
	private Drug drug;
	private int _drug_id;
	private int number;//数量
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int get_user_id() {
		return _user_id;
	}
	public void set_user_id(int _user_id) {
		this._user_id = _user_id;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public Date getShipdate() {
		return shipdate;
	}
	public void setShipdate(Date shipdate) {
		this.shipdate = shipdate;
	}
	public int getHassend() {
		return hassend;
	}
	public void setHassend(int hassend) {
		this.hassend = hassend;
	}
	public int getHasreceive() {
		return hasreceive;
	}
	public void setHasreceive(int hasreceive) {
		this.hasreceive = hasreceive;
	}
	public String getReceive() {
		return receive;
	}
	public void setReceive(String receive) {
		this.receive = receive;
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
	
}
