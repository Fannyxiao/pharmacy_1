package com.pharmacy.model;

public class User {
	private int id;//id号
	private String username;//姓名
	private String email;//邮箱
	private String phone;//电话
	private String password;//密码
	private int age;//年龄
	private String sex;//性别
	private String image;//头像
	private String createdata;//创建日期
	private double allintegral; //总积分
	private double overintegral;//剩余积分
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCreatedate() {
		return createdata;
	}
	public void setCreatedate(String createdata) {
		this.createdata = createdata;
	}
	public double getAllintegral() {
		return allintegral;
	}
	public void setAllintegral(double allintegral) {
		this.allintegral = allintegral;
	}
	public double getOverintegral() {
		return overintegral;
	}
	public void setOverintegral(double overintegral) {
		this.overintegral = overintegral;
	}
}
