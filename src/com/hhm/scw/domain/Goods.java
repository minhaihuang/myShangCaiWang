package com.hhm.scw.domain;

import java.io.Serializable;
import java.util.Set;

public class Goods implements Serializable{
	/*
	 create table goods(
	goodsId int(100) primary key,
	goodsName varchar(20) not null,
	weight int,
	grade int,
	detail text,
	price varchar(10),
	goodsMaxImgPath varchar(255),
	goodsMinImgPath varchar(255)

);
	 */
	private int goodsId;
	private String goodsName;
	private int weight;// 计量单位
	private int grade;// 积分
	private String detail;
	private String price;
	private String goodsMaxImgPath;
	private String goodsMinImgPath;

	private Set<Classify> classifys=null;
	
	public Set<Classify> getClassifys() {
		return classifys;
	}

	public void setClassifys(Set<Classify> classifys) {
		this.classifys = classifys;
	}

	
	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getGoodsMaxImgPath() {
		return goodsMaxImgPath;
	}

	public void setGoodsMaxImgPath(String goodsMaxImgPath) {
		this.goodsMaxImgPath = goodsMaxImgPath;
	}

	public String getGoodsMinImgPath() {
		return goodsMinImgPath;
	}

	public void setGoodsMinImgPath(String goodsMinImgPath) {
		this.goodsMinImgPath = goodsMinImgPath;
	}

	
}
