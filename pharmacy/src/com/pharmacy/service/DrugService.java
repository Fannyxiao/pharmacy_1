package com.pharmacy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.pharmacy.model.Admin;
import com.pharmacy.model.Drug;
import com.pharmacy.util.DB;

public class DrugService {
	/*
	 * 增加我的商品
	 */
	public static void adddrug(Drug s) {
		Connection conn = DB.createConn();
		String sql = "insert into _drugshop values (null,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, s.get_admin_id());
			ps.setString(2, s.getDrugtitle());
			ps.setString(3, s.getDrugtext());
			ps.setDouble(4, s.getPrice());
			ps.setInt(5, s.getDrugnumber());
			ps.setString(6, s.getImage());
			DateFormat d4 = DateFormat.getDateInstance();
			Date now = new Date();
			ps.setString(7, d4.format(now));
			ps.setInt(8, s.getDrugtype());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}

	/*
	 * 我的商品列表
	 */
	public static List<Drug> shoplist(Admin u) {

		Connection conn = DB.createConn();
		String sql = "select * from _drugshop where _admin_id = " + u.getId();
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Drug> Shops = new ArrayList<Drug>();
		try {
			ResultSet rs = ps.executeQuery();
			Drug s = null;
			while (rs.next()) {
				s = new Drug();
				s.setDrugid(rs.getInt("drugid"));
				s.set_admin_id(rs.getInt("_admin_id"));
				s.setDrugtitle(rs.getString("drugtitle"));
				s.setDrugtext(rs.getString("drugtext"));
				s.setPrice(rs.getDouble("price"));
				s.setDrugnumber(rs.getInt("drugnumber"));
				s.setTime(rs.getString("time"));
				s.setImage(rs.getString("image"));
				s.setDrugtype(rs.getInt("drugtype"));
				s.setAdmin(findAdminById(u.getId()));
				Shops.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return Shops;
	}

	/*
	 * 所有商品列表
	 */
	public static List<Drug> alldruglist() {
		Connection conn = DB.createConn();
		String sql = "select * from _drugshop";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Drug> Drugs = new ArrayList<Drug>();
		try {
			ResultSet rs = ps.executeQuery();
			Drug s = null;
			while (rs.next()) {
				s = new Drug();
				s.setDrugid(rs.getInt("drugid"));
				s.set_admin_id(rs.getInt("_admin_id"));
				s.setDrugtitle(rs.getString("drugtitle"));
				s.setDrugtext(rs.getString("drugtext"));
				s.setPrice(rs.getDouble("price"));
				s.setDrugnumber(rs.getInt("drugnumber"));
				s.setTime(rs.getString("time"));
				s.setImage(rs.getString("image"));
				s.setDrugtype(rs.getInt("drugtype"));
				s.setAdmin(findAdminById(rs.getInt("_admin_id")));
				
				Drugs.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return Drugs;
	}

	/*
	 * 查询用户并返回此用户
	 */
	public static Admin findAdminById(int id) {
		Admin admin = new Admin();
		Connection conn = DB.createConn();
		String sql = "select * from _admin where id = " + id;
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				admin.setId(rs.getInt("id"));
				admin.setAdminname(rs.getString("adminname"));
				admin.setPassword(rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return admin;
	}

	/*
	 * 通过id查询药品
	 */
	public static Drug findDrugById(int id) {
		Drug drug = new Drug();
		Connection conn = DB.createConn();
		String sql = "select * from _drugshop where drugid = " + id;
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				drug.setDrugid(rs.getInt("drugid"));
				drug.set_admin_id(rs.getInt("_admin_id"));
				drug.setDrugtitle(rs.getString("drugtitle"));
				drug.setDrugtext(rs.getString("drugtext"));
				drug.setPrice(rs.getDouble("price"));
				drug.setDrugnumber(rs.getInt("drugnumber"));
				drug.setTime(rs.getString("time"));
				drug.setImage(rs.getString("image"));
				drug.setDrugtype(rs.getInt("drugtype"));
				drug.setAdmin(findAdminById(rs.getInt("_admin_id")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return drug;
	}

	/*
	 * 通过drug的id查找drug，插入其image
	 */
	public static void insertimage(int id, String image) {
		Connection conn = DB.createConn();
		System.out.println("-------------" + id);
		String sql = "update _drugshop set image = ? where drugid = " + id;
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, image);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}

	/*
	 * 同过id查找drug的image
	 */
	public static String getimage(int id) {
		String image = null;
		Connection conn = DB.createConn();
		String sql = "select * from _drugshop where drugid = " + id;
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				image = rs.getString("image");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return image;
	}


	/*
	 * 删除药品信息
	 */
	public static void drugdelete(Drug drug) {
		Connection conn = DB.createConn();
		String sql = "delete from _drugshop where drugid = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, drug.getDrugid());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
	/*
	 * 进货
	 * */
	public static void drugnumber(Drug drug,int number){
		Connection conn = DB.createConn();
		String sql = "update _drugshop set drugnumber = ? + drugnumber where drugid = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, number);
			ps.setInt(2, drug.getDrugid());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
	/*
	 * 修改信息
	 * */
	public static void drugreviseinput(Drug drug){
		Connection conn = DB.createConn();
		String sql = null;
		if(drug.getImage()!=null){
		    sql = "update _drugshop set drugtitle = ? , drugtext = ? , price = ? , image = ? where drugid = ?";
		}
		else{
			sql = "update _drugshop set drugtitle = ? , drugtext = ? , price = ? where drugid = ?";
		}
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, drug.getDrugtitle());
			ps.setString(2, drug.getDrugtext());
			ps.setDouble(3, drug.getPrice());
			if(drug.getImage()!=null){
				ps.setString(4, drug.getImage());
				ps.setInt(5, drug.getDrugid());
				}
			else {
				ps.setInt(4, drug.getDrugid());
			}
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
}
