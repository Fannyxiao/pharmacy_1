package com.pharmacy.model;

public class Drugreply {
	private int drugreplyid;
	private int _user_id;
	private int _admin_id;
	private int _drug_drugid;
	private int pid;
	private int rootid;
	private String replytext;
	private String replydate;
	private String image;
	private User user;
	private Drug drug;
	private Admin admin;
	private String adminreply;
	
	
	public int getDrugreplyid() {
		return drugreplyid;
	}
	public void setDrugreplyid(int drugreplyid) {
		this.drugreplyid = drugreplyid;
	}
	public int get_user_id() {
		return _user_id;
	}
	public void set_user_id(int _user_id) {
		this._user_id = _user_id;
	}
	public int get_drug_drugid() {
		return _drug_drugid;
	}
	public void set_drug_drugid(int _drug_drugid) {
		this._drug_drugid = _drug_drugid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getRootid() {
		return rootid;
	}
	public void setRootid(int rootid) {
		this.rootid = rootid;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public int get_admin_id() {
		return _admin_id;
	}
	public void set_admin_id(int _admin_id) {
		this._admin_id = _admin_id;
	}
	public String getAdminreply() {
		return adminreply;
	}
	public void setAdminreply(String adminreply) {
		this.adminreply = adminreply;
	}
	
}
