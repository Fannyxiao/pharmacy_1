package com.pharmacy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.pharmacy.model.Car;
import com.pharmacy.model.Drug;
import com.pharmacy.model.User;
import com.pharmacy.util.DB;

public class CarService {

	/*
	 * 购物车列表
	 */
	public static List<Car> carlist() {
		Connection conn = DB.createConn();
		String sql = "select * from _car";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Car> cars = new ArrayList<Car>();
		try {
			ResultSet rs = ps.executeQuery();
			Car car = null;
			while (rs.next()) {
				car = new Car();
				car.setCarid(rs.getInt("carid"));
				car.set_user_id(rs.getInt("_user_id"));
				car.set_drug_id(rs.getInt("_drug_id"));
				car.setNumber(rs.getInt("number"));
				car.setTime(rs.getDate("time"));
				car.setDrug(DrugService.findDrugById(rs.getInt("_drug_id")));
				car.setUser(UserService.findUserById(rs.getInt("_user_id")));
				cars.add(car);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return cars;
	}

	/*
	 * 我的购物车列表
	 */
	public static List<Car> mycarlist(User user) {

		Connection conn = DB.createConn();
		String sql = "select * from _car where _user_id = '" + user.getId()
				+ "'";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Car> cars = new ArrayList<Car>();
		try {
			ResultSet rs = ps.executeQuery();
			Car car = null;
			while (rs.next()) {
				car = new Car();
				car.setCarid(rs.getInt("carid"));
				car.set_user_id(rs.getInt("_user_id"));
				car.set_drug_id(rs.getInt("_drug_id"));
				car.setNumber(rs.getInt("number"));
				car.setTime(rs.getDate("time"));
				car.setDrug(DrugService.findDrugById(rs.getInt("_drug_id")));
				car.setUser(UserService.findUserById(rs.getInt("_user_id")));
				cars.add(car);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return cars;
	}

	/*
	 * 加入购物车
	 */
	@SuppressWarnings("resource")
	public static int addcar(Drug d, User u) {
		Connection conn = DB.createConn();
		String sql = "select * from _car where _user_id = '" + u.getId()
				+ "' and _drug_id = '" + d.getDrugid() + "'";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				sql = "update _car set number = number + 1";
				ps = DB.prepare(conn, sql);
				try {
					// ps.setInt(1, u.getId());
					ps.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				DB.close(ps);
				DB.close(conn);
				return 0;
			}
			sql = "insert into _car(carid,_user_id,_drug_id,number,time) values (null,?,?,1,?)";
			ps = DB.prepare(conn, sql);
			try {
				ps.setInt(1, u.getId());
				ps.setInt(2, d.getDrugid());
				DateFormat d4 = DateFormat.getDateInstance();
				Date now = new Date();
				ps.setString(3, d4.format(now));
				System.out.println(d4.format(now));
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return 0;
	}

	/*
	 * 删除购物车商品
	 */
	public static void deletecar(Car c) {
		Connection conn = DB.createConn();
		String sql = "delete from _car where carid = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, c.getCarid());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}

	/*
	 * 增加购物车药品数量
	 */
	public static void addcarnumber(Car c, int num) {
		Connection conn = DB.createConn();
		String sql = "update _car set number = number + ? where carid = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, num);
			ps.setInt(2, c.getCarid());
			System.out.print(num + "   =========" + c.getCarid());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}

	/*
	 * 查找购物记录根据id
	 */
	public static Car findCarById(Car c) {
		Car car = new Car();
		Connection conn = DB.createConn();
		String sql = "select * from _car where carid = " + c.getCarid();
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				car.set_drug_id(rs.getInt("_drug_id"));
				car.set_user_id(rs.getInt("_user_id"));
				car.setCarid(rs.getInt("carid"));
				car.setNumber(rs.getInt("number"));
				car.setTime(rs.getDate("time"));
				car.setDrug(DrugService.findDrugById(rs.getInt("_drug_id")));
				car.setUser(UserService.findUserById(rs.getInt("_user_id")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return car;

	}
}
