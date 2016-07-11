package com.hhm.scw.web.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.hhm.scw.domain.Goods;
import com.hhm.scw.service.ClassifyService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 商品小类的action
 * @author 黄帅哥
 *
 */
public class ClassifyAction extends ActionSupport{
	private ClassifyService classifyService=null;
	private String classifyName=null;//当前操作的小类
	
	private String categoryName=null;//获得当前操作的大类
	

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		//处理中文乱码
		if(categoryName!=null){
			try {
				categoryName=new String(categoryName.getBytes("ISO-8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				
				e.printStackTrace();
			}
		}
		this.categoryName = categoryName;
	}
	
	public String getClassifyName() {
		return classifyName;
	}

	public void setClassifyName(String classifyName) {
		//预防乱码
		if(classifyName!=null){
			try {
				classifyName=new String(classifyName.getBytes("ISO-8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				
				e.printStackTrace();
			}
		}
		
		this.classifyName = classifyName;
	}

	public ClassifyService getClassifyService() {
		return classifyService;
	}

	public void setClassifyService(ClassifyService classifyService) {
		this.classifyService = classifyService;
	}

	/**
	 * 导航到商品页面
	 * @return
	 */
	public String showGoods(){
		System.out.println(classifyName);
		System.out.println(categoryName);
		
		//记录当前操作的大类和小类的名称
		ServletActionContext.getRequest().setAttribute("categoryName", categoryName);
		ServletActionContext.getRequest().setAttribute("classifyName", classifyName);
		//获取所有的小类为有机蔬菜的商品
		List<Goods> goodsList=this.classifyService.getGoodsListByClassifyName(classifyName);
		
		if(goodsList!=null&&goodsList.size()!=0){
		ServletActionContext.getRequest().setAttribute("goodsList", goodsList);
		}
		return "goodsSearch";
	}
	
}
