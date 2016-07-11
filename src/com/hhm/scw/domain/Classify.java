package com.hhm.scw.domain;

import java.io.Serializable;
import java.util.Set;

public class Classify implements Serializable{
	/*
	 * create table classify( classifyId varchar(100) primary key, classifyName
	 * varchar(20) not null );
	 */
	private String classifyId;
	private String classifyName;

	private Set<Goods> goodsSet=null;
	
	
	public Set<Goods> getGoodsSet() {
		return goodsSet;
	}

	public void setGoodsSet(Set<Goods> goodsSet) {
		this.goodsSet = goodsSet;
	}

	public String getClassifyId() {
		return classifyId;
	}

	public void setClassifyId(String classifyId) {
		this.classifyId = classifyId;
	}

	public String getClassifyName() {
		return classifyName;
	}

	public void setClassifyName(String classifyName) {
		this.classifyName = classifyName;
	}

}
