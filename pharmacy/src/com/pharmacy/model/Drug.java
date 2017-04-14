package com.pharmacy.model;


public class Drug {
	private int drugid;
	private int _admin_id;
	private int drugtype;
	private String drugtitle;
	private String drugtext;
	private double price;
	private int drugnumber;
	private String image;
	private String time;
	private Admin admin;
	
	public int getDrugtype() {
		return drugtype;
	}
	public void setDrugtype(int drugtype) {
		this.drugtype = drugtype;
	}
	public int getDrugid() {
		return drugid;
	}
	public void setDrugid(int drugid) {
		this.drugid = drugid;
	}
	public int get_admin_id() {
		return _admin_id;
	}
	public void set_admin_id(int _admin_id) {
		this._admin_id = _admin_id;
	}
	public String getDrugtitle() {
		return drugtitle;
	}
	public void setDrugtitle(String drugtitle) {
		this.drugtitle = drugtitle;
	}
	public String getDrugtext() {
		return drugtext;
	}
	public void setDrugtext(String drugtext) {
		this.drugtext = drugtext;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getDrugnumber() {
		return drugnumber;
	}
	public void setDrugnumber(int drugnumber) {
		this.drugnumber = drugnumber;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	
}
