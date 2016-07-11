package com.hhm.scw.domain;

import java.io.Serializable;
import java.util.Set;

public class Category implements Serializable {
	/*
	 * create table category( categoryId varchar(100) primary key, categoryName
	 * varchar(20) );
	 */

	private String categoryId;
	private String categoryName;
	
	private Set<Classify> classifys=null;
	
	

	public Set<Classify> getClassifys() {
		return classifys;
	}

	public void setClassifys(Set<Classify> classifys) {
		this.classifys = classifys;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

}
