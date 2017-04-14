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

import com.pharmacy.model.User;
import com.pharmacy.util.DB;


public class UserService {
	/*
	 * 注册用户
	 */
	public static int register(User u) {
		Connection conn = DB.createConn();
		String sql = "select * from _user where username = '" + u.getUsername()
				+ "'";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return 2;
			}
			sql = "insert into _user(id,username,phone,password,createdata,allintegral,overintegral) values (null,?,?,?,?,0,0)";
			ps = DB.prepare(conn, sql);
			try {
				ps.setString(1, u.getUsername());
				ps.setString(2, u.getPhone());
				ps.setString(3, u.getPassword());
				DateFormat d4 = DateFormat.getDateInstance();
				Date now = new Date();
				ps.setString(4, d4.format(now));
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
		return 1;
	}
	/*
	 * 登陆
	 */
	public static int login(User user) {
		Connection conn = DB.createConn();
		String sql = "select * from _user where username = '"
				+ user.getUsername() + "'";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			User c = null;
			while (rs.next()) {
				if (rs.getString("password").equals(user.getPassword())) {
					c = new User();
					c.setId(rs.getInt("id"));
					c.setUsername(rs.getString("username"));
					c.setPhone(rs.getString("phone"));
					c.setPassword(rs.getString("password"));
					c.setEmail(rs.getString("email"));
					c.setSex(rs.getString("sex"));
					c.setAge(rs.getInt("age"));
					c.setImage(rs.getString("image"));
					c.setAllintegral(rs.getDouble("allintegral"));
					c.setOverintegral(rs.getDouble("overintegral"));
					HttpSession session = ServletActionContext.getRequest()
							.getSession();
					session.setAttribute("username", c.getUsername());
					session.setAttribute("password", c.getPassword());
					session.setAttribute("id", c.getId());
					session.setAttribute("phone", c.getPhone());
					session.setAttribute("sex", c.getSex());
					session.setAttribute("age", c.getAge());
					session.setAttribute("email", c.getEmail());
					session.setAttribute("image", c.getImage());
					session.setAttribute("allintegral", c.getAllintegral());
					session.setAttribute("overintegral", c.getOverintegral());
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
	 * 修改详细信息
	 */
	public static void revise(User c) {
		Connection conn = DB.createConn();
		String sql = "update _user set phone = ? , email = ? , age = ? , sex = ? , image = ? where id = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, c.getPhone());
			ps.setString(2, c.getEmail());
			ps.setInt(3, c.getAge());
			ps.setString(4, c.getSex());
			ps.setString(5, c.getImage());
			ps.setInt(6, c.getId());
			
			HttpSession session = ServletActionContext.getRequest()
					.getSession();
			session.setAttribute("phone", c.getPhone());
			session.setAttribute("sex", c.getSex());
			session.setAttribute("age", c.getAge());
			session.setAttribute("email", c.getEmail());
			session.setAttribute("image", c.getImage());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	/*
	 * 注销
	 * */
	public static void destroy(){
		HttpSession session = ServletActionContext.getRequest()
				.getSession();
		session.setAttribute("username", null);
		session.setAttribute("password", null);
		session.setAttribute("id", null);
		session.setAttribute("phone", null);
		session.setAttribute("sex", null);
		session.setAttribute("age", null);
		session.setAttribute("email", null);
	}
	
	/*
	 * 所有用户列表
	 */
	public static List<User> userlist() {

		Connection conn = DB.createConn();
		String sql = "select * from _user";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<User> users = new ArrayList<User>();
		try {
			ResultSet rs = ps.executeQuery();
			User user = null;
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPhone(rs.getString("phone"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				user.setImage(rs.getString("image"));
				user.setCreatedate(rs.getString("createdata"));
				user.setAllintegral(rs.getDouble("allintegral"));
				user.setOverintegral(rs.getDouble("overintegral"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return users;
	}
	
	/*
	 * id查询user信息
	 * */
	static User findUserById(int id){
		User user = new User();
		Connection conn = DB.createConn();
		String sql = "select * from _user where id = " + id;
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPhone(rs.getString("phone"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				user.setImage(rs.getString("image"));
				user.setAllintegral(rs.getDouble("allintegral"));
				user.setOverintegral(rs.getDouble("overintegral"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return user;
	}
	/*
	 * 增加积分
	 * */
	public static void addintegral(User user,int number){
		Connection conn = DB.createConn();
		String sql = "update _user set overintegral = ? + overintegral , allintegral = ? + allintegral where id = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, number);
			ps.setInt(2, number);
			ps.setInt(3, user.getId());
			ps.executeUpdate();
			HttpSession session = ServletActionContext.getRequest()
					.getSession();
			session.setAttribute("allintegral", user.getAllintegral() + number);
			session.setAttribute("overintegral", user.getOverintegral() + number);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
}
