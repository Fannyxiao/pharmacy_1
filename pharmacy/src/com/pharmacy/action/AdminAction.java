package com.pharmacy.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pharmacy.model.Admin;
import com.pharmacy.model.Drug;
import com.pharmacy.model.Drugreply;
import com.pharmacy.model.User;
import com.pharmacy.service.AdminService;
import com.pharmacy.service.UserService;

@SuppressWarnings("serial")
public class AdminAction extends ActionSupport {
	private List<User> users;
	private List<Admin> admins;
	private Admin admin;
	private Drug drug;
	private List<Drugreply> drugreplies;
	private Drugreply drugreply;
	
	public Drugreply getDrugreply() {
		return drugreply;
	}

	public void setDrugreply(Drugreply drugreply) {
		this.drugreply = drugreply;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Admin> getAdmins() {
		return admins;
	}

	public void setAdmins(List<Admin> admins) {
		this.admins = admins;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Drug getDrug() {
		return drug;
	}

	public void setDrug(Drug drug) {
		this.drug = drug;
	}

	/*
	 * 管理员登陆
	 */
	public String loginInput() {
		return SUCCESS;
	}

	/*
	 * 管理员登陆
	 */
	public String login() {
		int flag = 0;
		flag = AdminService.login(admin);
		if (flag == 2)
			return "NOTEXIST";
		else if (flag == 3)
			return "ERRORPASSWORD";
		// shops = ShopService.allshoplist();
		// bbstopics = BbstopicService.bbstopiclist();
		return "INDEX";
	}

	/*
	 * 查看所有用户列表
	 */
	public String user() {
		users = UserService.userlist();
		return SUCCESS;
	}

	/*
	 * 查看所有管理员列表
	 */
	public String adminlist() {
		admins = AdminService.adminlist();
		return SUCCESS;
	}

	/*
	 * 删除用户
	 */
	public String deleteuser() {
		users = UserService.userlist();
		return "user";
	}

	/*
	 * 删除管理员
	 */
	public String deleteadmin() {
		AdminService.deleteadmin(admin);
		return "INDEX";
	}

	/*
	 * 增加管理员
	 */
	public String addadmin() {
		return SUCCESS;
	}

	public String addadminInput() {
		AdminService.addadmin(admin);
		return "INDEX";
	}
	/*
	 * 增加药品
	 * */
	public String adddrug(){
		return SUCCESS;
	}
	public String addgrugInput(){
		
		return "INDEX";
	}
	
	/*
	 * 加载评论
	 * */
	public String adminreply(){
		drugreplies = AdminService.adminreply();
		return SUCCESS;
	}
	
	/*
	 * 回复评论或问题
	 * */
	public String adminreplyinput(){
		AdminService.adminreplyinput(drugreply);
		drugreplies = AdminService.adminreply();
		return "ADMINREPLY";
	}
	
	public List<Drugreply> getDrugreplies() {
		return drugreplies;
	}

	public void setDrugreplies(List<Drugreply> drugreplies) {
		this.drugreplies = drugreplies;
	}
}
