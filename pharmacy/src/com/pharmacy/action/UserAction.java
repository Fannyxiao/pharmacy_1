package com.pharmacy.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.pharmacy.model.Car;
import com.pharmacy.model.Order;
import com.pharmacy.model.User;
import com.pharmacy.service.CarService;
import com.pharmacy.service.OrderService;
import com.pharmacy.service.UserService;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	private User user;
	private File headImg;
	private String headImgContantType;
	private String headImgFileName;
	private int number;
	private List<Order> orders;
	private List<Car> cars;
	public int getNumber() {
		return number;
	}


	public void setNumber(int number) {
		this.number = number;
	}


	public User getUser() {
		return user;
	}
	
	
	public File getHeadImg() {
		return headImg;
	}


	public void setHeadImg(File headImg) {
		this.headImg = headImg;
	}


	public String getHeadImgContantType() {
		return headImgContantType;
	}


	public void setHeadImgContantType(String headImgContantType) {
		this.headImgContantType = headImgContantType;
	}


	public String getHeadImgFileName() {
		return headImgFileName;
	}


	public void setHeadImgFileName(String headImgFileName) {
		this.headImgFileName = headImgFileName;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	/*
	 * 注册新用户用户
	 */
	public String registerInput() {
		orders = OrderService.userorderlist(user);
		return INPUT;
	}
	public String register() {
		int flag = 0;
		flag = UserService.register(user);
		orders = OrderService.userorderlist(user);
		if(flag == 2)
			return "EXIST";
		return "INDEX";
	}
	/*
	 * 用户登陆
	 */
	public String loginInput() {
		orders = OrderService.userorderlist(user);
		return INPUT;
	}
	public String login() {
		int flag = 0;
		flag = UserService.login(user);
		orders = OrderService.userorderlist(user);
		if (flag == 2)
			return "NOTEXIST";
		else if (flag == 3)
			return "ERRORPASSWORD";
		return "INDEX";
	}
	
	/*
	 *  修改用户信息
	 */
	public String reviseInput() {
		return INPUT;
	}

	public String revise() {
		user.setImage(Image());
		UserService.revise(user);
		orders = OrderService.userorderlist(user);
		return "INDEX";
	}
	/*
	 * 注销
	 * */
	public String destroy(){
		UserService.destroy();
		orders = OrderService.userorderlist(user);
		return "INDEX";
	}
	
	
	/*
	 * 将图片转化为字符串
	 * */
	
	private String Image(){
		if (headImg != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("upload/user");
			String fileName = UUID.randomUUID().toString()
					+ headImgFileName.substring(headImgFileName
							.lastIndexOf("."));
			try {
				FileUtils.copyFile(headImg, new File(filePath, fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
			return ("user/" + fileName);
		}
		return null;
	}
	
	/*
	 *  查看个人主页
	 */
	public String index() {
		orders = OrderService.userorderlist(user);
		cars = CarService.mycarlist(user);
		return INPUT;
	}
	/*
	 * 增加积分
	 * */
	public String addintegral(){
		UserService.addintegral(user,number);
		return "INDEX";
	}


	public List<Order> getOrders() {
		return orders;
	}


	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}


	public List<Car> getCars() {
		return cars;
	}


	public void setCars(List<Car> cars) {
		this.cars = cars;
	}
	
	
	
	
}
