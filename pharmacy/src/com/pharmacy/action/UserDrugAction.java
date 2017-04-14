package com.pharmacy.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.pharmacy.model.Drug;
import com.pharmacy.model.Drugreply;
import com.pharmacy.model.User;
import com.pharmacy.service.DrugService;
import com.pharmacy.service.UserDrugService;

@SuppressWarnings("serial")
public class UserDrugAction extends ActionSupport{
	private static Drug drug;
	private User user;
	private List<Drug> drugs;
	private static int drugid;
	private Drugreply drugreply;
	private static List<Drugreply> drugreplies;
	private File headImg;
	private String headImgContantType;
	private String headImgFileName;
	
	public File getHeadImg() {
		return headImg;
	}

	public void setHeadImg(File headImg) {
		this.headImg = headImg;
	}

	public String getHeadImgFileName() {
		return headImgFileName;
	}

	public void setHeadImgFileName(String headImgFileName) {
		this.headImgFileName = headImgFileName;
	}

	public List<Drugreply> getDrugreplies() {
		return drugreplies;
	}

	public void setDrugreplies(List<Drugreply> drugreplies) {
		UserDrugAction.drugreplies = drugreplies;
	}

	
	public Drugreply getDrugreply() {
		return drugreply;
	}

	public void setDrugreply(Drugreply drugreply) {
		this.drugreply = drugreply;
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

	public List<Drug> getDrugs() {
		return drugs;
	}

	public void setDrugs(List<Drug> drugs) {
		this.drugs = drugs;
	}

	public int getDrugid() {
		return drugid;
	}

	public void setDrugid(int drugid) {
		this.drugid = drugid;
	}

	/*
	 * 药品列表
	 * */
	public String druglist(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}
	/*
	 * 商品详细信息
	 **/ 
	public static String drugdetail(){
		drug = UserDrugService.findDrugById(drugid);
		drug.get_admin_id();
		drugreplies = UserDrugService.drugreplylist(drugid);
		return SUCCESS;
	}
	/*
	 * 加入购物车
	 * */
	public String carlist(){
		
		return SUCCESS;
	}
	
	/*
	 * 写评论
	 * */
	public String reply(){
		drugreply.setImage(Image());
		UserDrugService.reply(drugreply);
		drugreplies = UserDrugService.drugreplylist(drugid);
		drugdetail();
		return "detail";
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
	 * 写评论
	 *
	public String reply(){
		drugreply.setImage(Image());
		DrugService.reply(drugreply);
		drugreplies = DrugService.drugreplylist(drugid);
		UserDrugAction.drugdetail();
		return "detail";
	}*/
	/*
	 *加载评论
	 * */
	public String drugreplylist(){
		drugreplies = UserDrugService.drugreplylist(drugid);
		return SUCCESS;
	}
	
	

	public String getHeadImgContantType() {
		return headImgContantType;
	}

	public void setHeadImgContantType(String headImgContantType) {
		this.headImgContantType = headImgContantType;
	} 
}
