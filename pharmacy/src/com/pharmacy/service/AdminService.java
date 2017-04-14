package com.pharmacy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.pharmacy.model.Admin;
import com.pharmacy.model.Drugreply;
import com.pharmacy.util.DB;


public class AdminService {
	
	/*
	 * 管理员列表
	 * */
	public static List<Admin> adminlist(){
		List<Admin> admins = new ArrayList<Admin>();
		Connection conn = DB.createConn();
		String sql = "select * from _admin";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			Admin s = null;
			while (rs.next()) {
				s = new Admin();
				s.setId(rs.getInt("id"));
				s.setAdminname(rs.getString("adminname"));
				s.setPassword(rs.getString("password"));
				admins.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return admins;
	}
	/*
	 *增加管理员 
	 * */
	public static void addadmin(Admin admin){
		Connection conn = DB.createConn();
		String sql = "insert into _admin values (null,?,?)";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, admin.getAdminname());
			ps.setString(2, admin.getPassword());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	/*
	 * 删除管理员
	 * */
	public static void deleteadmin(Admin admin){
		Connection conn = DB.createConn();
		String sql = "delete from _admin where id = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, admin.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	/*
	 * 登陆
	 */
	public static int login(Admin admin) {
		Connection conn = DB.createConn();
		String sql = "select * from _admin where adminname = '"
				+ admin.getAdminname() + "'";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			Admin c = null;
			while (rs.next()) {
				if (rs.getString("password").equals(admin.getPassword())) {
					c = new Admin();
					c.setId(rs.getInt("id"));
					c.setAdminname(rs.getString("adminname"));
					c.setPassword(rs.getString("password"));
					HttpSession session = ServletActionContext.getRequest()
							.getSession();
					session.setAttribute("adminname", c.getAdminname());
					session.setAttribute("password", c.getPassword());
					session.setAttribute("id", c.getId());
					return 1;
				} else {
					return 3;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return 2;
	}
	/*
	 * 加载评论列表
	 * */
	public static List<Drugreply> adminreply(){
		List<Drugreply> drugreplies = new ArrayList<Drugreply>();
		Connection conn = DB.createConn();
		String sql = "select * from _drugreply";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			Drugreply s = null;
			while (rs.next()) {
				s = new Drugreply();
				s.set_drug_drugid(rs.getInt("_drug_drugid"));
				s.set_user_id(rs.getInt("_user_id"));
				s.setAdmin(findAdminById(rs.getInt("_admin_id")));
				s.set_admin_id(rs.getInt("_admin_id"));
				s.setDrug(DrugService.findDrugById(rs.getInt("_drug_drugid")));
				s.setDrugreplyid(rs.getInt("drugreplyid"));
				s.setPid(rs.getInt("pid"));
				s.setReplydate(rs.getString("replydate"));
				s.setReplytext(rs.getString("replytext"));
				s.setRootid(rs.getInt("rootid"));
				s.setUser(UserService.findUserById(rs.getInt("_user_id")));
				s.setAdminreply(rs.getString("adminreply"));
				drugreplies.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return drugreplies;
	}
	/*
	 * id查询user信息
	 * */
	static Admin findAdminById(int id){
		Admin admin = new Admin();
		Connection conn = DB.createConn();
		String sql = "select * from _admin where id = " + id;
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				admin = new Admin();
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
	 * 管理员回复评论
	 * */
	public static void adminreplyinput(Drugreply drugreply){
		Connection conn = DB.createConn();
		String sql = "update _drugreply set adminreply = ? where drugreplyid = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, drugreply.getAdminreply());
			ps.setInt(2, drugreply.getDrugreplyid());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
}
