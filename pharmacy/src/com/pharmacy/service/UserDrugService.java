package com.pharmacy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.pharmacy.model.Drug;
import com.pharmacy.model.Drugreply;
import com.pharmacy.util.DB;

public class UserDrugService {
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
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return drug;
	}

	/*
	 * 发表评论
	 * */
	public static void reply(Drugreply s){
		Connection conn = DB.createConn();
		String sql = "insert into _drugreply values (null,?,null,?,?,?,?,?,?,null)";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, s.get_user_id());
			ps.setInt(2, s.get_drug_drugid());
			ps.setInt(3, s.getPid());
			ps.setInt(4, s.getRootid());
			ps.setString(5, s.getReplytext());
			DateFormat d4 = DateFormat.getDateInstance();
			Date now = new Date();
			ps.setString(6, d4.format(now));
			ps.setString(7, s.getImage());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);   
	}
	/*
	 * 加载评论列表
	 * */
	public static List<Drugreply> drugreplylist(int drugid){
		List<Drugreply> shopreplys = new ArrayList<Drugreply>();
		Connection conn = DB.createConn();
		String sql = "select * from _drugreply where _drug_drugid = " + drugid;
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			Drugreply s = null;
			while (rs.next()) {
				s = new Drugreply();
				s.setDrugreplyid(rs.getInt("drugreplyid"));
				s.set_user_id(rs.getInt("_user_id"));
				s.set_drug_drugid(rs.getInt("_drug_drugid"));
				s.setPid(rs.getInt("pid"));
				s.setRootid(rs.getInt("rootid"));
				s.setReplytext(rs.getString("replytext"));
				s.setReplydate(rs.getString("replydate"));
				s.setImage(rs.getString("image"));
				s.setUser(UserService.findUserById(rs.getInt("_user_id")));
				s.setDrug(findDrugById(rs.getInt("_drug_drugid")));
				s.setAdminreply(rs.getString("adminreply"));
				shopreplys.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return shopreplys;
	}

	/*
	 * 加载所有评论列表
	 * */
	public static List<Drugreply> drugreplylist(){
		List<Drugreply> drugreplys = new ArrayList<Drugreply>();
		Connection conn = DB.createConn();
		String sql = "select * from _drugreply";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			Drugreply s = null;
			while (rs.next()) {
				s = new Drugreply();
				s.setDrugreplyid(rs.getInt("drugreplyid"));
				s.set_user_id(rs.getInt("_user_id"));
				s.set_drug_drugid(rs.getInt("_drug_drugid"));
				s.setPid(rs.getInt("pid"));
				s.setRootid(rs.getInt("rootid"));
				s.setReplytext(rs.getString("replytext"));
				s.setReplydate(rs.getString("replydate"));
				s.setImage(rs.getString("image"));
				s.setUser(UserService.findUserById(rs.getInt("_user_id")));
				s.setDrug(findDrugById(rs.getInt("_drug_drugid")));
				drugreplys.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return drugreplys;
	}
}
