package com.pharmacy.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.pharmacy.model.Drug;
import com.pharmacy.model.User;
import com.pharmacy.service.DrugService;

@SuppressWarnings("serial")
public class DrugAction extends ActionSupport {
	private Drug drug;
	private User user;
	private List<Drug> drugs;
	private String time;
	private File headImg;
	private String headImgContantType;
	private String headImgFileName;
	private int drugid;
	private int number;
	
	
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public Drug getDrug() {
		return drug;
	}

	public void setDrug(Drug drug) {
		this.drug = drug;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	/*
	 * 增加药品
	 */
	public String adddrug() {
		return SUCCESS;
	}
	public String adddrugInput() throws IOException {
		
		drug.setImage(Image());
		DrugService.adddrug(drug);
	//	drugs = DrugService.shoplist(admin);
		return "INDEX";
	}
	/*
	 * 药品列表
	 * */
	public String druglist(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}

	/*
	 * 删除药品
	 * */
	public String drugdelete(){
		DrugService.drugdelete(drug);
		drugs = DrugService.alldruglist();
		return "DRUGLIST";
	}
	
	/*
	 * 进货
	 * */
	public String drugnumber(){
		DrugService.drugnumber(drug, number);
		drugs = DrugService.alldruglist();
		return "DRUGLIST";
	}
	
	/*
	 * 首页
	 * */
	public String indexshou(){
		drugs = DrugService.alldruglist();
		return "INDEXSHOU";
	}
	
	/*
	 * 修改信息
	 * */
	public String drugrevise(){
		drug = DrugService.findDrugById(drug.getDrugid());
		return SUCCESS;
	}
	
	/*
	 * 修改信息
	 * */
	public String drugreviseinput() throws IOException{
		drug.setImage(Image());
		DrugService.drugreviseinput(drug);
		drugs = DrugService.alldruglist();
		return "DRUGLIST";
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
	
	public String jtyy(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}
	public String zkyy(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}
	public String ylqx(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}
	public String zbbj(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}
	public String myyp(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}
	public String wssg(){
		drugs = DrugService.alldruglist();
		return SUCCESS;
	}
		
}
