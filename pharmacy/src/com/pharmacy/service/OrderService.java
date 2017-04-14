package com.pharmacy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.pharmacy.model.Car;
import com.pharmacy.model.Drug;
import com.pharmacy.model.Order;
import com.pharmacy.model.User;
import com.pharmacy.util.DB;

public class OrderService {
	/*
	 * 增加交易
	 */
	public static int addorder(Car car, Order order) {
		Car c = new Car();
		Drug d = new Drug();
		User u = new User();
		c = CarService.findCarById(car);
		d = DrugService.findDrugById(c.get_drug_id());
		u = UserService.findUserById(c.get_user_id());
		if (d.getDrugnumber() >= c.getNumber()) {
			Connection conn = DB.createConn();
			String sql = "insert into _order values (null,?,?,?,null,0,0,?,?,?)";
			PreparedStatement ps = DB.prepare(conn, sql);
			try {
				ps.setInt(1, c.get_user_id());
				ps.setString(2, order.getMemo());
				DateFormat d3 = DateFormat.getDateInstance();
				Date now = new Date();
				ps.setString(3, d3.format(now));
				ps.setString(4, order.getReceive());
				ps.setInt(5, c.get_drug_id());
				ps.setInt(6, c.getNumber());
				ps.executeUpdate();
				HttpSession session = ServletActionContext.getRequest()
						.getSession();
				session.setAttribute("overintegral", u.getOverintegral() - c.getNumber() * d.getPrice());
			} catch (SQLException e) {
				e.printStackTrace();
			}
			sql = "update _user set overintegral = overintegral - ? where id = ?";
			ps = DB.prepare(conn, sql);
			try {
				ps.setDouble(1, d.getPrice());
				ps.setInt(2, u.getId());
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			sql = "delete from _car where carid = ?";
			ps = DB.prepare(conn, sql);
			try {
				ps.setInt(1, car.getCarid());
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			sql = "update _user set overintegral = ? + overintegral , allintegral = ? + allintegral where id = ?";
			ps = DB.prepare(conn, sql);
			try {
				ps.setDouble(1, d.getPrice() * car.getNumber());
				ps.setDouble(2, d.getPrice() * car.getNumber());
				ps.setInt(3, u.getId());
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			sql = "update _drugshop set drugnumber = drugnumber - 1  where drugid = ?";
			ps = DB.prepare(conn, sql);
			try {
				ps.setInt(1, d.getDrugid());
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			DB.close(ps);
			DB.close(conn);
			return 0;
		}
		return 1;
	}
	/*
	 * 订单列表
	 * */
	public static List<Order> adminorderlist() {
		Connection conn = DB.createConn();
		String sql = "select * from _order";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Order> Orders = new ArrayList<Order>();
		try {
			ResultSet rs = ps.executeQuery();
			Order s = null;
			while (rs.next()) {
				s = new Order();
				s.set_drug_id(rs.getInt("_drug_id"));
				s.set_user_id(rs.getInt("_user_id"));
				s.setHasreceive(rs.getInt("hasreceive"));
				s.setHassend(rs.getInt("hassend"));
				s.setMemo(rs.getString("memo"));
				s.setNumber(rs.getInt("number"));
				s.setOrderdate(rs.getDate("orderdate"));
				s.setOrderid(rs.getInt("orderid"));
				s.setReceive(rs.getString("receieve"));
				s.setShipdate(rs.getDate("shipdate"));
				s.setDrug(DrugService.findDrugById(rs.getInt("_drug_id")));
				s.setUser(UserService.findUserById(rs.getInt("_user_id")));
				Orders.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return Orders;
	}
	/*
	 * 我的订单列表
	 */
	public static List<Order> userorderlist(User user) {
		Connection conn = DB.createConn();
		String sql = "select * from _order where _user_id = " + user.getId() ;
		System.out.println("======================");
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Order> Orders = new ArrayList<Order>();
		try {
			ResultSet rs = ps.executeQuery();
			Order s = null;
			while (rs.next()) {
				s = new Order();
				s.set_drug_id(rs.getInt("_drug_id"));
				s.set_user_id(rs.getInt("_user_id"));
				s.setHasreceive(rs.getInt("hasreceive"));
				s.setHassend(rs.getInt("hassend"));
				s.setMemo(rs.getString("memo"));
				s.setNumber(rs.getInt("number"));
				s.setOrderdate(rs.getDate("orderdate"));
				s.setOrderid(rs.getInt("orderid"));
				s.setReceive(rs.getString("receieve"));
				s.setShipdate(rs.getDate("shipdate"));
				s.setDrug(DrugService.findDrugById(rs.getInt("_drug_id")));
				s.setUser(UserService.findUserById(rs.getInt("_user_id")));
				Orders.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return Orders;
	}
	/*
	 * 发货
	 * */
	public static void send(Order order){
		Connection conn = DB.createConn();
		String sql = "update _order set hassend = 1 ,shipdate = ? where orderid = " + order.getOrderid();
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			DateFormat d3 = DateFormat.getDateInstance();
			Date now = new Date();
			ps.setString(1, d3.format(now));
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	/*
	 * 确认收货
	 * */
	public static void receive(Order order){
		Connection conn = DB.createConn();
		String sql = "update _order set hasreceive = 1 where orderid = " + order.getOrderid();
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
}
