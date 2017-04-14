package com.pharmacy.action;


import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pharmacy.model.Car;
import com.pharmacy.model.Drug;
import com.pharmacy.model.Order;
import com.pharmacy.model.User;
import com.pharmacy.service.CarService;
import com.pharmacy.service.OrderService;

@SuppressWarnings("serial")
public class OrderAction extends ActionSupport {
	private Car car;
	private Drug drug;
	private User user;
	private List<Car> cars;
	private List<Order> orders;
	private Order order;
	private int num;

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public Drug getDrug() {
		return drug;
	}

	public void setDrug(Drug drug) {
		this.drug = drug;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Car> getCars() {
		return cars;
	}

	public void setCars(List<Car> cars) {
		this.cars = cars;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	/*
	 * 购买商品，增加购买记录
	 * */
	public String addorder() {
		if (OrderService.addorder(car, order) == 1)
			return "ERROR";
		else 
			return "INDEX";
	}
	/*
	 * 购买
	 * */
	public String addorderinput(){
		car = CarService.findCarById(car);
		orders = OrderService.userorderlist(user);
		return "INPUT";
	}
	/*
	 * 总列表
	 * */
	public String adminorderlist(){
		orders = OrderService.adminorderlist();
		return SUCCESS;
	}
	/*
	 * 我的购买记录
	 * */
	public String myorderlist(){
		orders = OrderService.userorderlist(user);
		return SUCCESS;
	}
	/*
	 * 确认收货
	 * */
	public String receive(){
		OrderService.receive(order);
		orders = OrderService.userorderlist(user);
		return "USERLIST";
	}
	/*
	 * 发货
	 * */
	public String send(){
		OrderService.send(order);
		orders = OrderService.adminorderlist();
		return "ADMINLIST";
	}
}
