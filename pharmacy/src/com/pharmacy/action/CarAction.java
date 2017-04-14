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
public class CarAction extends ActionSupport{
	private Car car;
	private Drug drug;
	private User user;
	private List<Car> cars;
	private int num;
	private List<Order> orders;
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
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	/*
	 * 加入购物车
	 * */
	public String addcar(){
		CarService.addcar(drug,user);
		orders = OrderService.userorderlist(user);
		return "INDEX";
	}
	/*
	 * 购物车列表
	 * */
	public String list(){
		cars = CarService.carlist();
		return SUCCESS;
	}
	/*
	 * 我的购物车列表
	 * */
	public String mycarlist(){
		cars = CarService.mycarlist(user);
		setOrders(OrderService.userorderlist(user));
		return "USERINDEX";
	}
	
	/*
	 * 删除我的购物车
	 * */
	public String deletecar(){
		CarService.deletecar(car);
		cars = CarService.mycarlist(user);
		orders = OrderService.userorderlist(user);
		return "USERINDEX";
	}
	
	/*
	 * 增加购物车数量
	 * */
	public String addcarnumber(){
		CarService.addcarnumber(car,num);
		cars = CarService.mycarlist(user);
		orders = OrderService.userorderlist(user);
		return "USERINDEX";
	}
	public List<Order> getOrders() {
		return orders;
	}
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

}
